import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_images.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.logo1, width: 80, height: 80),
        const SizedBox(height: 24),
        Text(AppStrings.createAccount, style: AppTextStyles.styleBold30),
        const SizedBox(height: 8),
        Text(
          AppStrings.joinCommunity,
          style: AppTextStyles.styleRegular16.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
