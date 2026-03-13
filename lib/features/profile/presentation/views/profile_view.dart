import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/functions.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        scrolledUnderElevation: 0,
        title: Text(AppStrings.profileSmall),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(AppIcons.arrowBack, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(height: 16),
            const Text('Alex Johnson', style: AppTextStyles.styleBold24),
            const Text(
              'alex.j@example.com',
              style: AppTextStyles.styleRegular16,
            ),
            const SizedBox(height: 32),

            buildSectionTitle(AppStrings.account),
            buildProfileItem(Icons.person_outline, AppStrings.editProfile),
            buildProfileItem(Icons.lock_outline, AppStrings.changePassword),

            const SizedBox(height: 24),
            buildSectionTitle(AppStrings.preferences),
            buildProfileItem(
              Icons.dark_mode_outlined,
              AppStrings.darkMode,
              isToggle: true,
            ),
            buildProfileItem(
              Icons.language,
              AppStrings.language,
              trailingText: AppStrings.english,
            ),
            const SizedBox(height: 32),

            buildSectionTitle(AppStrings.support),
            buildProfileItem(
              Icons.help_outline,
              AppStrings.helpCenter,
            ),
            buildProfileItem(
              Icons.privacy_tip_outlined,
              AppStrings.privacyPolicy,
            ),
            buildProfileItem(
              Icons.book_online_outlined,
              AppStrings.terms,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout, color: AppColors.primary),
                label: const Text(
                  AppStrings.logout,
                  style: TextStyle(color: AppColors.primary),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: AppColors.ce1),
                  backgroundColor: AppColors.cf5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}


