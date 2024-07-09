import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/gen/assets.gen.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  DefaultAppbar({
    this.title,
    this.subtitle,
    this.needBackButton = false,
    this.needDivider = false,
    this.onBackPressed,
    this.backButtonColor = AppColors.onAccent,
    this.backgroundColor = AppColors.grayBackground,
    this.sizeFromHeight = 70,
    this.rightWidget = const SizedBox(),
    this.onRightWidgetPressed,
  });

  final String? title;
  final String? subtitle;
  final bool needBackButton;
  final bool needDivider;
  final VoidCallback? onBackPressed;
  final Color backButtonColor;
  final Color backgroundColor;
  final double sizeFromHeight;
  final Widget rightWidget;
  final VoidCallback? onRightWidgetPressed;

  @override
  Size get preferredSize => Size.fromHeight(sizeFromHeight);

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.white,
        height: sizeFromHeight,
        padding: EdgeInsets.only(bottom: 16, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: needBackButton ? _buildBackButton() : const SizedBox(),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: _buildTitle(),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: rightWidget,
                  ),
                ],
              ),
            ),
            if (needDivider) _buildDivider(),
          ],
        ),
      );

  Widget _buildDivider() => Container(
        width: double.maxFinite,
        height: 1,
        color: AppColors.black30,
      );

  Widget _buildBackButton() => GestureDetector(
        onTap: () {
          onBackPressed?.call();
        },
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset(
            Assets.images.backArrow,
            height: 32,
            width: 32,
            color: backButtonColor,
          ),
        ),
      );

  Widget _buildTitle() => Text(
        title!,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: AppColors.black,
        ),
      );
}
