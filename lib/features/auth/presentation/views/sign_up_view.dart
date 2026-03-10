import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_up_header.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/social_sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SignUpHeader(),
              const SizedBox(height: 24),
              const SignUpForm(),
              const SizedBox(height: 24),
              const SocialSignUp(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppStrings.alreadyHaveAccount, style: AppTextStyles.styleMedium14),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(AppStrings.signIn, 
                      style: AppTextStyles.styleMedium14.copyWith(color: AppColors.primary)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}