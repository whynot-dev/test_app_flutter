import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_state_widget.dart';

import 'bloc/news_bloc.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends BaseBlocStateWidget<NewsScreen, NewsBloc, NewsEvent> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<NewsBloc, NewsState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: Column(
          children: [
            _buildAppBar(),
          ],
        ),
      );

  Widget _buildAppBar() => DefaultAppbar(
        title: localization.news,
      );

  Widget _buildSearch() => Container();

  Widget _buildItems() => Container();

}
