import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:test_app_flutter/core/failures.dart';
import 'package:test_app_flutter/data/repositories/articles_repository.dart';
import 'package:test_app_flutter/domain/entities/network/response/articles_response.dart';
import 'package:test_app_flutter/domain/entities/news.dart';

part 'news_state.dart';

part 'news_event.dart';

part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({
    required this.articlesRepository,
  }) : super(NewsState()) {
    on<Init>(_init);
    on<PageScrolled>(_pageScrolled);
    on<NewsClicked>(_newsClicked);
    on<SearchTextChanged>(_searchTextChanged);
    on<Search>(_search);
    on<RefreshData>(_refreshData);
  }

  static const _pageSize = 10;
  int _offset = 0;
  final ArticlesRepository articlesRepository;

  FutureOr<void> _init(Init event, Emitter<NewsState> emit) async {

  }

  FutureOr<void> _pageScrolled(PageScrolled event, Emitter<NewsState> emit) async {
    await _getNews(emit);
    _offset += _pageSize;
  }

  FutureOr<void> _newsClicked(NewsClicked event, Emitter<NewsState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateToNewsDetail(id: event.item.id)));
  }

  FutureOr<void> _getNews(Emitter<NewsState> emit) async {
    ArticlesResponse? articlesResponse;

    Either<ArticlesResponse, Failure> result = await articlesRepository.getNews(
      limit: _pageSize,
      offset: _offset,
      search: state.searchText,
    );

    result.fold(
      (data) => articlesResponse = data,
      (error) {},
    );

    if (articlesResponse?.results?.isNotEmpty ?? false) {
      emit(state.copyWith(action: null));
      List<News> allNews = List.from(state.news)..addAll(articlesResponse!.results!);
      if (articlesResponse!.results!.length < _pageSize ||
          articlesResponse?.count == allNews.length) {
        emit(state.copyWith(
          action: AddLastNewsPage(news: articlesResponse!.results!),
          news: allNews,
        ));
      } else {
        emit(state.copyWith(
          action: AddNewsPage(news: articlesResponse!.results!, currentCount: allNews.length),
          news: allNews,
        ));
      }
    } else {
      emit(state.copyWith(news: [], action: RefreshList()));
    }
  }

  FutureOr<void> _searchTextChanged(SearchTextChanged event, Emitter<NewsState> emit) {
    emit(state.copyWith(searchText: event.text, action: null));
    _offset = 0;

    if (EasyDebounce.count() == 1) {
      EasyDebounce.cancel('debouncer');
    }

    EasyDebounce.debounce(
      'debouncer',
      Duration(milliseconds: 500),
      () {
        add(NewsEvent.search());
      },
    );
  }

  FutureOr<void> _search(Search event, Emitter<NewsState> emit) async {
    if (state.searchText != null) {
      emit(state.copyWith(action: null));
      emit(state.copyWith(news: [], action: RefreshList()));
      await _getNews(emit);
      _offset += _pageSize;
    }
  }

  FutureOr<void> _refreshData(RefreshData event, Emitter<NewsState> emit) async {
    _offset = 0;
    emit(state.copyWith(news: [], action: RefreshList(needRefreshData: true), searchText: null));
  }
}
