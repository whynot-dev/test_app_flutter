import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';

part 'about_app_state.dart';

part 'about_app_event.dart';

part 'about_app_bloc.freezed.dart';

class AboutAppBloc extends Bloc<AboutAppEvent, AboutAppState> {
  AboutAppBloc() : super(AboutAppState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<AboutAppState> emit) {
    emit(state.copyWith());
  }
}
