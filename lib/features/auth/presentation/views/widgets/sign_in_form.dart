import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_bottom.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.email, style: AppTextStyles.styleBold14),
        const CustomTextField(
          hint: AppStrings.emailHint,
          icon: Icons.email_outlined,
        ),
        const SizedBox(height: 8),
        const Text(AppStrings.password, style: AppTextStyles.styleBold14),
        const CustomTextField(
          hint: '••••••',
          icon: Icons.lock_outline,
          isPassword: true,
        ),
        const SizedBox(height: 8),
        Align(
          alignment: AlignmentGeometry.centerRight,
          child: Text(
            AppStrings.forgetPassword,
            style: AppTextStyles.styleBold14.copyWith(color: AppColors.primary),
          ),
        ),
        const SizedBox(height: 16),
        CustomBottom(onTap: () {}, text: AppStrings.signIn),
      ],
    );
  }
}
