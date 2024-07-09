import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';

part 'news_state.dart';

part 'news_event.dart';

part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<NewsState> emit) {
    emit(state.copyWith());
  }
}
