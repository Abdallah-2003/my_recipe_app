import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/routing/routes.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_bottom.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(AppStrings.email, style: AppTextStyles.styleBold14),
          CustomTextField(
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            hint: AppStrings.emailHint,
            icon: Icons.email_outlined,
          ),
          const SizedBox(height: 8),
          const Text(AppStrings.password, style: AppTextStyles.styleBold14),
          CustomTextField(
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
            hint: '••••••',
            icon: Icons.lock_outline,
            isPassword: true,
          ),
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Text(
              AppStrings.forgetPassword,
              style: AppTextStyles.styleBold14.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 16),
          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                context.read<AuthCubit>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
              }
              Navigator.pushNamed(context, AppRoutes.layoutView);
            },
            text: AppStrings.signIn,
          ),
        ],
      ),
    );
  }
}
