import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/functions.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class RecipeHeaderInfo extends StatelessWidget {
  const RecipeHeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            buildTag(AppStrings.italian, AppColors.cd5, AppColors.primary),
            const SizedBox(width: 8),
            buildTag(AppStrings.dinner, AppColors.cf9, AppColors.c8b),
          ],
        ),
        const SizedBox(height: 12),
        Text(AppStrings.recipeName, style: AppTextStyles.styleBold24),
      ],
    );
  }
}
