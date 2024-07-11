import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app_flutter/app/presentation/screens/news_detail/bloc/news_detail_bloc.dart';
import 'package:test_app_flutter/app/presentation/screens/news_detail/news_detail_screen.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/app/widgets/inputs/base_input.dart';
import 'package:test_app_flutter/app/widgets/lists/article_item.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:test_app_flutter/di/injection.dart';
import 'package:test_app_flutter/domain/entities/news.dart';

import 'bloc/news_bloc.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends BaseBlocStateWidget<NewsScreen, NewsBloc, NewsEvent> {

  final PagingController<int, News> _pagingController = PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageCount) {
      sendEvent(NewsEvent.pageScrolled(pageCount));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<NewsBloc, NewsState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {
          if (action is AddNewsPage) {
            _pagingController.appendPage(action.news, action.currentCount);
          }
          if (action is AddLastNewsPage) {
            _pagingController.appendLastPage(action.news);
          }
          if (action is RefreshList) {
            _pagingController.itemList = [];
            if (action.needRefreshData) _pagingController.refresh();
          }
          if (action is NavigateToNewsDetail) {
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BlocProvider(
                  create: (context) => NewsDetailBloc(
                    idNewsDetail: action.id,
                    articlesRepository: injection(),
                  ),
                  child: NewsDetailScreen(),
                ),
              ),
            );
          }
        },
        child: Column(
          children: [
            _buildAppBar(),
            _buildSearch(),
            Expanded(
              child: _buildArticleItems(),
            ),
          ],
        ),
      );

  Widget _buildAppBar() => DefaultAppbar(
        title: localization.allNews,
      );

  Widget _buildSearch() => BlocBuilder<NewsBloc, NewsState>(
        buildWhen: (previous, current) => previous.searchText != current.searchText,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 10),
          child: BaseInput(
            onChanged: (text) {
              sendEvent(NewsEvent.searchTextChanged(text));
            },
            text: state.searchText,
            hint: localization.search,
            prefix: Icon(Icons.search),
          ),
        ),
      );

  Widget _buildArticleItems() => BlocBuilder<NewsBloc, NewsState>(
        buildWhen: (previous, current) => previous.news != current.news,
        builder: (context, state) => RefreshIndicator(
          onRefresh: () async {
            FocusManager.instance.primaryFocus?.unfocus();
            sendEvent(NewsEvent.refreshData());
            await Future.delayed(const Duration(milliseconds: 500));
          },
          child: PagedListView.separated(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 90),
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate(
              firstPageErrorIndicatorBuilder: (context) => const SizedBox(),
              newPageErrorIndicatorBuilder: (context) => const SizedBox(),
              firstPageProgressIndicatorBuilder: (context) => const SizedBox(),
              newPageProgressIndicatorBuilder: (context) => Center(
                child: const CircularProgressIndicator(color: AppColors.blue),
              ),
              noItemsFoundIndicatorBuilder: (context) => const SizedBox(),
              itemBuilder: (context, News, int) => ArticleItem(
                title: state.news[int].title,
                summary: state.news[int].summary,
                imageUrl: state.news[int].imageUrl,
                onTap: () {
                  sendEvent(NewsEvent.newsClicked(state.news[int]));
                },
              ),
            ),
            separatorBuilder: (context, int) => const SizedBox(height: 16),
          ),
        ),
      );
}
