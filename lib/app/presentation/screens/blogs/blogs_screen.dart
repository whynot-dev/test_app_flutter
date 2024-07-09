import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_state_widget.dart';

import 'bloc/blogs_bloc.dart';

class BlogsScreen extends StatefulWidget {
  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends BaseBlocStateWidget<BlogsScreen, BlogsBloc, BlogsEvent> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<BlogsBloc, BlogsState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: Column(
          children: [
            _buildAppBar(),
          ],
        ),
      );

  Widget _buildAppBar() => DefaultAppbar(
        title: localization.blogs,
      );
}
