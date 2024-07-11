import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:test_app_flutter/gen/assets.gen.dart';
import 'package:test_app_flutter/localization/app_localizations.dart';

import 'bloc/about_app_bloc.dart';

class AboutAppScreen extends BaseBlocStatelessWidget<AboutAppBloc, AboutAppEvent> {
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDescription(),
                  const SizedBox(height: 16),
                  _buildLinkButton(context),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildAppBar(BuildContext context) => DefaultAppbar(
        title: AppLocalizations.of(context).aboutApp,
      );

  Widget _buildDescription() => Text(
        'Made by Vadim Kireev',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.black),
      );

  Widget _buildLinkButton(BuildContext context) => GestureDetector(
        onTap: () {
          sendEvent(AboutAppEvent.linkClicked(), context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 17),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(blurRadius: 10, color: AppColors.black.withOpacity(0.08)),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Assets.images.clip),
              const SizedBox(width: 16),
              Text(
                'my GitHub',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
              ),
            ],
          ),
        ),
      );
}
