import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:url_launcher/url_launcher.dart';

part 'about_app_state.dart';

part 'about_app_event.dart';

part 'about_app_bloc.freezed.dart';

class AboutAppBloc extends Bloc<AboutAppEvent, AboutAppState> {
  AboutAppBloc() : super(AboutAppState()) {
    on<Init>(_init);
    on<LinkClicked>(_linkClicked);
  }

  FutureOr<void> _init(Init event, Emitter<AboutAppState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _linkClicked(LinkClicked event, Emitter<AboutAppState> emit) async{
    final _url = Uri.parse('https://github.com/whynot-dev');
    await launchUrl(_url);
  }
}
