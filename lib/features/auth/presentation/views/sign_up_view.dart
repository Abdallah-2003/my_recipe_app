import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/functions.dart';
import 'package:my_recipe/core/routing/routes.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/data/repo/auth_repo.dart';
import 'package:my_recipe/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/sign_up_header.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/social_sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepo()),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is SignUpFailure) {
            snackBar(context: context, message: state.message);
          } else if (state is SignUpSuccess) {
            snackBar(
              context: context,
              message: 'Register Succesful!',
              backgroundColor: Colors.green,
            );
          }
        },
        builder: (context, state) {
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
                    const SocialSignUp(text: AppStrings.orSignUpWith),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.alreadyHaveAccount,
                          style: AppTextStyles.styleMedium14,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, AppRoutes.loginView),
                          child: Text(
                            AppStrings.signIn,
                            style: AppTextStyles.styleMedium14.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
