import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key});

  final List<String> ingredients = const [
    '200g Linguine or Spaghetti',
    '2 cups Fresh Basil leaves',
    '2 cloves Garlic, minced',
    '1/2 tsp Red pepper flakes',
    '50g Pine nuts or Walnuts',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.ingredients, style: AppTextStyles.styleBold18),
        const SizedBox(height: 12),
        ...ingredients.map(
          (ingredient) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.cd5,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: const Icon(
                    AppIcons.check,
                    size: 14,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(ingredient, style: AppTextStyles.styleRegular14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
