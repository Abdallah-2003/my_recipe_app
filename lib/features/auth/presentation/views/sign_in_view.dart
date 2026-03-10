import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_in_form.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_in_header.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/social_sign_up.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SignInHeader(),
              const SizedBox(height: 24,),
              SignInForm(),
              const SizedBox(height: 24,),
              SocialSignUp(
                text: AppStrings.orSignInWith,
              ),
              const SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppStrings.noAccount, style: AppTextStyles.styleMedium14),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(AppStrings.signUp, 
                      style: AppTextStyles.styleMedium14.copyWith(color: AppColors.primary)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
