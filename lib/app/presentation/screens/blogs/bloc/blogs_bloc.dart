import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:test_app_flutter/core/failures.dart';
import 'package:test_app_flutter/data/repositories/articles_repository.dart';
import 'package:test_app_flutter/domain/entities/blog.dart';
import 'package:test_app_flutter/domain/entities/network/response/blogs_response.dart';

part 'blogs_state.dart';

part 'blogs_event.dart';

part 'blogs_bloc.freezed.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  BlogsBloc({
    required this.articlesRepository,
  }) : super(BlogsState()) {
    on<Init>(_init);
    on<PageScrolled>(_pageScrolled);
    on<BlogClicked>(_newsClicked);
    on<SearchTextChanged>(_searchTextChanged);
    on<Search>(_search);
    on<RefreshData>(_refreshData);
  }

  static const _pageSize = 10;
  int _offset = 0;
  final ArticlesRepository articlesRepository;

  FutureOr<void> _init(Init event, Emitter<BlogsState> emit) {}

  FutureOr<void> _pageScrolled(PageScrolled event, Emitter<BlogsState> emit) async {
    await _getNews(emit);
    _offset += _pageSize;
  }

  FutureOr<void> _newsClicked(BlogClicked event, Emitter<BlogsState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateToBlogDetail(id: event.item.id)));
  }

  FutureOr<void> _getNews(Emitter<BlogsState> emit) async {
    BlogsResponse? articlesResponse;

    Either<BlogsResponse, Failure> result = await articlesRepository.getBlogs(
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
      List<Blog> allBlogs = List.from(state.blogs)..addAll(articlesResponse!.results!);
      if (articlesResponse!.results!.length < _pageSize ||
          articlesResponse?.count == allBlogs.length) {
        emit(state.copyWith(
          action: AddLastNewsPage(blogs: articlesResponse!.results!),
          blogs: allBlogs,
        ));
      } else {
        emit(state.copyWith(
          action: AddNewsPage(blogs: articlesResponse!.results!, currentCount: allBlogs.length),
          blogs: allBlogs,
        ));
      }
    } else {
      emit(state.copyWith(blogs: [], action: RefreshList()));
    }
  }

  FutureOr<void> _searchTextChanged(SearchTextChanged event, Emitter<BlogsState> emit) {
    print('object');
    emit(state.copyWith(searchText: event.text, action: null));
    _offset = 0;

    if (EasyDebounce.count() == 1) {
      EasyDebounce.cancel('debouncer');
    }

    EasyDebounce.debounce(
      'debouncer',
      Duration(milliseconds: 500),
      () {
        print('timer');
        add(BlogsEvent.search());
      },
    );
  }

  FutureOr<void> _search(Search event, Emitter<BlogsState> emit) async {
    if (state.searchText != null) {
      emit(state.copyWith(action: null));
      emit(state.copyWith(blogs: [], action: RefreshList()));
      await _getNews(emit);
      _offset += _pageSize;
    }
  }

  FutureOr<void> _refreshData(RefreshData event, Emitter<BlogsState> emit) async {
    _offset = 0;
    emit(state.copyWith(blogs: [], action: RefreshList(needRefreshData: true), searchText: null));
  }
}
