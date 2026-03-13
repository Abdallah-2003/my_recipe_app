import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/social_bottom.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(text, style: AppTextStyles.styleRegular14),
            ),
            const Expanded(child: Divider()),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: SocialButton(label: AppStrings.google)),
            const SizedBox(width: 16),
            Expanded(child: SocialButton(label: AppStrings.apple)),
          ],
        ),
      ],
    );
  }
}
