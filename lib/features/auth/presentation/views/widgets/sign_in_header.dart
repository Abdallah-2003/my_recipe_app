import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_images.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 70,
          children: [
            Image.asset(AppImages.logo1, width: 48, height: 48),
            Text(AppStrings.recipeFinder, style: AppTextStyles.styleBold18),
          ],
        ),
        const SizedBox(height: 12),
        Image.asset(AppImages.image, height: 200, width: double.infinity),
        const SizedBox(height: 16),
        Text(AppStrings.welcomeBack, style: AppTextStyles.styleBold32),
        Text(AppStrings.signInToContinue, style: AppTextStyles.styleRegular16),
      ],
    );
  }
}
