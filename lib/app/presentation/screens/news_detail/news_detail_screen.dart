import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_stateless_widget.dart';

import 'bloc/news_detail_bloc.dart';

class NewsDetailScreen extends BaseBlocStatelessWidget {

  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<NewsDetailBloc, NewsDetailState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: Container(),
      );

}