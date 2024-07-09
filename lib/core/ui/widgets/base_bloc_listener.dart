import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/core/bloc/base_bloc_state.dart';
import 'package:test_app_flutter/core/bloc/bloc_action.dart';

class BaseBlocListener<B extends BlocBase<S>, S extends BaseBlocState>
    extends BlocListener<B, S> {
  BaseBlocListener({
    BlocListenerCondition<S>? listenWhen,
    Future<void> Function(BuildContext context, S state, BlocAction? action)?
        listener,
    this.child,
  }) : super(
          listenWhen: (previous, current) {
            return previous.action != current.action ||
                listenWhen?.call(previous, current) == true;
          },
          listener: getBaseListener(listener),
          child: child,
        );

  final Widget? child;

  static BlocWidgetListener<S> getBaseListener<S extends BaseBlocState>(
    Future<void> Function(BuildContext context, S state, BlocAction? action)?
        listener,
  ) =>
      (BuildContext context, S state) async {
        BlocAction? action = state.action;
        await listener?.call(context, state, action);
      };
}
