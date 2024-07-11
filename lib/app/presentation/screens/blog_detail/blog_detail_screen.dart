import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/app/widgets/app_bars/default_appbar.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_listener.dart';
import 'package:test_app_flutter/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:test_app_flutter/gen/assets.gen.dart';
import 'package:test_app_flutter/localization/app_localizations.dart';

import 'bloc/blog_detail_bloc.dart';

class BlogDetailScreen extends BaseBlocStatelessWidget<BlogDetailBloc, BlogDetailEvent> {
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<BlogDetailBloc, BlogDetailState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {
          if (action is NavigateBackAction) {
            Navigator.pop(context);
          }
        },
        child: Column(
          children: [
            _buildAppBar(context),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  _buildImage(),
                  const SizedBox(height: 16),
                  _buildTitle(),
                  const SizedBox(height: 7),
                  _buildDivider(),
                  const SizedBox(height: 7),
                  _buildSummary(),
                  const SizedBox(height: 25),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: _buildLinkButton(),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildAppBar(BuildContext context) => DefaultAppbar(
        needBackButton: true,
        onBackPressed: () {
          sendEvent(BlogDetailEvent.backClicked(), context);
        },
      );

  Widget _buildImage() => BlocBuilder<BlogDetailBloc, BlogDetailState>(
        buildWhen: (previous, current) => previous.blogDetail != current.blogDetail,
        builder: (context, state) => state.blogDetail?.imageUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  height: 235,
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: state.blogDetail?.imageUrl ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : const SizedBox(),
      );

  Widget _buildTitle() => BlocBuilder<BlogDetailBloc, BlogDetailState>(
        buildWhen: (previous, current) => previous.blogDetail != current.blogDetail,
        builder: (context, state) => state.blogDetail?.imageUrl != null
            ? Text(
                state.blogDetail?.title ?? '',
                style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.black2),
              )
            : const SizedBox(),
      );

  Widget _buildDivider() => Container(
        color: AppColors.gray4,
        width: double.infinity,
        height: 1,
      );

  Widget _buildSummary() => BlocBuilder<BlogDetailBloc, BlogDetailState>(
        buildWhen: (previous, current) => previous.blogDetail != current.blogDetail,
        builder: (context, state) => state.blogDetail?.imageUrl != null
            ? Text(
                state.blogDetail?.summary ?? '',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.gray3),
              )
            : const SizedBox(),
      );

  Widget _buildLinkButton() => BlocBuilder<BlogDetailBloc, BlogDetailState>(
        buildWhen: (previous, current) => previous.blogDetail != current.blogDetail,
        builder: (context, state) => state.blogDetail?.imageUrl != null
            ? GestureDetector(
                onTap: () {
                  sendEvent(BlogDetailEvent.linkClicked(), context);
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
                        AppLocalizations.of(context).goSource,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
      );
}