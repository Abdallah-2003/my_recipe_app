
import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class FavoriteCard extends StatelessWidget {
  final String title;
  final String time;
  final String imagePath;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.time,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 16,
                  child: const Icon(AppIcons.favorite, color: AppColors.primary, size: 18),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        
        Text(
          title,
          style: AppTextStyles.styleBold14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Icon(AppIcons.accessTime, size: 14, color: AppColors.cb8),
            const SizedBox(width: 4),
            Text(
              time,
              style: AppTextStyles.styleRegular12,
            ),
          ],
        ),
      ],
    );
  }
}