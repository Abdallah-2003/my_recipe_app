import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.recipeFinder,
          style: AppTextStyles.styleBold20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: AppColors.primary, size: 28),
        ),
      ],
    );
  }
}