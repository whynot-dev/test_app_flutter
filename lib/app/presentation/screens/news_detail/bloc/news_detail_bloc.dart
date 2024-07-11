import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:test_app_flutter/core/failures.dart';
import 'package:test_app_flutter/data/repositories/articles_repository.dart';
import 'package:test_app_flutter/domain/entities/news.dart';
import 'package:url_launcher/url_launcher.dart';

part 'news_detail_state.dart';

part 'news_detail_event.dart';

part 'news_detail_bloc.freezed.dart';

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  NewsDetailBloc({
    required this.idNewsDetail,
    required this.articlesRepository,
  }) : super(NewsDetailState()) {
    on<Init>(_init);
    on<BackClicked>(_backClicked);
    on<LinkClicked>(_linkClicked);
    add(NewsDetailEvent.init());
  }

  final int idNewsDetail;
  final ArticlesRepository articlesRepository;

  FutureOr<void> _init(Init event, Emitter<NewsDetailState> emit) async {
    await _getNewsDetail(emit);
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<NewsDetailState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateBackAction()));
  }

  FutureOr<void> _linkClicked(LinkClicked event, Emitter<NewsDetailState> emit) async {
    if (state.newsDetail?.url != null) {
      final _url = Uri.parse(state.newsDetail!.url);
      await launchUrl(_url);
    }
  }

  FutureOr<void> _getNewsDetail(Emitter<NewsDetailState> emit) async {
    News? newsDetail;

    Either<News, Failure> result = await articlesRepository.getNewsDetail(
      id: idNewsDetail,
    );

    result.fold(
      (data) => newsDetail = data,
      (error) {},
    );

    emit(state.copyWith(newsDetail: newsDetail));
  }
}
