import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/routing/routes.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_bottom.dart';
import 'package:my_recipe/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(AppStrings.fullName, style: AppTextStyles.styleBold14),
           CustomTextField(hint: AppStrings.fullNameHint, icon: Icons.person_outline,
          controller: nameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
          },
          
          ),
          const SizedBox(height: 8),
          const Text(AppStrings.email, style: AppTextStyles.styleBold14),
           CustomTextField(hint: AppStrings.emailHint, icon: Icons.email_outlined,
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
           ),
          const SizedBox(height: 8),
          const Text(AppStrings.password, style: AppTextStyles.styleBold14),
           CustomTextField(hint: '••••••', icon: Icons.lock_outline, isPassword: true,
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
           ),
          const SizedBox(height: 16),
          CustomBottom(onTap: () {
            if (formKey.currentState!.validate()) {
                    context.read<AuthCubit>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                      username: nameController.text.trim(),
                    );
                    Navigator.pushNamed(context, AppRoutes.layoutView);
                  }
          }, text: AppStrings.signUp),
        ],
      ),
    );
  }
}
