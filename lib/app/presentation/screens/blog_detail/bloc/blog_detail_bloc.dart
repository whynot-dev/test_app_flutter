import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:test_app_flutter/core/failures.dart';
import 'package:test_app_flutter/data/repositories/articles_repository.dart';
import 'package:test_app_flutter/domain/entities/blog.dart';
import 'package:url_launcher/url_launcher.dart';

part 'blog_detail_state.dart';

part 'blog_detail_event.dart';

part 'blog_detail_bloc.freezed.dart';

class BlogDetailBloc extends Bloc<BlogDetailEvent, BlogDetailState> {
  BlogDetailBloc({
    required this.idNewsDetail,
    required this.articlesRepository,
  }) : super(BlogDetailState()) {
    on<Init>(_init);
    on<BackClicked>(_backClicked);
    on<LinkClicked>(_linkClicked);
    add(BlogDetailEvent.init());
  }

  final int idNewsDetail;
  final ArticlesRepository articlesRepository;

  FutureOr<void> _init(Init event, Emitter<BlogDetailState> emit) async {
    await _getBlogDetail(emit);
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<BlogDetailState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateBackAction()));
  }

  FutureOr<void> _linkClicked(LinkClicked event, Emitter<BlogDetailState> emit) async {
    if (state.blogDetail?.url != null) {
      final _url = Uri.parse(state.blogDetail!.url);
      await launchUrl(_url);
    }
  }

  FutureOr<void> _getBlogDetail(Emitter<BlogDetailState> emit) async {
    Blog? blogDetail;

    Either<Blog, Failure> result = await articlesRepository.getBlogDetail(
      id: idNewsDetail,
    );

    result.fold(
      (data) => blogDetail = data,
      (error) {},
    );

    emit(state.copyWith(blogDetail: blogDetail));
  }
}
