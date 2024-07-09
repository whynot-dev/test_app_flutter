import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';

part 'news_detail_state.dart';

part 'news_detail_event.dart';

part 'news_detail_bloc.freezed.dart';

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  NewsDetailBloc() : super(NewsDetailState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<NewsDetailState> emit) {
    emit(state.copyWith());
  }
}
