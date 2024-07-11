import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key,
    required this.title,
    required this.summary,
    required this.imageUrl,
    this.onTap,
  });

  final String title;
  final String summary;
  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => onTap?.call(),
          child: Row(
            children: [
              _buildImage(),
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    const SizedBox(height: 4),
                    _buildSummary(),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget _buildImage() => ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 70,
          height: 70,
          fit: BoxFit.cover,
        ),
      );

  Widget _buildTitle() => Text(
        title,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.black,
          overflow: TextOverflow.ellipsis,
        ),
      );

  Widget _buildSummary() => Text(
        summary,
        maxLines: 2,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.gray3,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
