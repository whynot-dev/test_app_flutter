import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:test_app_flutter/localization/app_localizations.dart';

import 'bloc/about_app_bloc.dart';

class AboutAppScreen extends BaseBlocStatelessWidget<AboutAppBloc, AboutAppScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<AboutAppBloc, AboutAppState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: Column(
          children: [
            _buildAppBar(context),
          ],
        ),
      );

  Widget _buildAppBar(BuildContext context) => DefaultAppbar(
        title: AppLocalizations.of(context).aboutApp,

      );
}
