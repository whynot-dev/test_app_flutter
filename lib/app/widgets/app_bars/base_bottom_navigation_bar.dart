import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/domain/enums/navigation_bar_item.dart';

class BaseBottomNavigationBar extends StatelessWidget {
  const BaseBottomNavigationBar({
    Key? key,
    required this.onItemSelected,
    required this.selectedItem,
  }) : super(key: key);

  final void Function(NavigationBarItem item) onItemSelected;
  final NavigationBarItem selectedItem;

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 76,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildNavigationBarItem(
                  context, NavigationBarItem.blogs, NavigationBarItem.blogs == selectedItem),
              _buildNavigationBarItem(
                  context, NavigationBarItem.news, NavigationBarItem.news == selectedItem),
              _buildNavigationBarItem(
                  context, NavigationBarItem.aboutApp, NavigationBarItem.aboutApp == selectedItem),
            ],
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -1),
                blurRadius: 21,
                color: AppColors.gray2.withOpacity(0.09),
              ),
            ],
          ),
        ),
      );

  Widget _buildNavigationBarItem(BuildContext context, NavigationBarItem item, bool isSelected) =>
      Expanded(
        child: GestureDetector(
          onTap: () {
            onItemSelected.call(item);
          },
          behavior: HitTestBehavior.translucent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIcon(item: item, isSelected: isSelected),
              _buildText(item.getName(context), isSelected),
            ],
          ),
        ),
      );

  Widget _buildText(String text, bool isSelected) => Text(
        text,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: isSelected ? AppColors.blue : AppColors.gray1,
        ),
      );
}

class _buildIcon extends StatelessWidget {
  const _buildIcon({super.key, required this.item, required this.isSelected});

  final NavigationBarItem item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => Container(
        width: 24,
        alignment: Alignment.bottomCenter,
        child: Icon(
          size: 24,
          item.getIcon,
          color: isSelected ? AppColors.blue : AppColors.gray1,
        ),
      );
}
