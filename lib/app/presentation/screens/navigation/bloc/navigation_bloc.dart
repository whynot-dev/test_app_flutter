import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';
import 'package:test_app_flutter/domain/enums/navigation_bar_item.dart';

part 'navigation_state.dart';

part 'navigation_event.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState()) {
    on<Init>(_init);
    on<NavigationBarItemSelected>(_navigationBarItemSelected);
  }

  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _navigationBarItemSelected(NavigationBarItemSelected event, Emitter<NavigationState> emit) {
    emit(state.copyWith(selectedItem: event.item));
  }


}
