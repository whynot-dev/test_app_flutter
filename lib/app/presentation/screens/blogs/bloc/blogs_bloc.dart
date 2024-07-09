import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';

part 'blogs_state.dart';

part 'blogs_event.dart';

part 'blogs_bloc.freezed.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  BlogsBloc() : super(BlogsState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<BlogsState> emit) {
    emit(state.copyWith());
  }
}
