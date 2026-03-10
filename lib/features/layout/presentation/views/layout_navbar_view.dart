import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class LayoutNavbarView extends StatelessWidget {
  const LayoutNavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.cb8,
        selectedLabelStyle: AppTextStyles.styleBold10,
        unselectedLabelStyle: AppTextStyles.styleBold10,
        items: [
          BottomNavigationBarItem(icon: Icon(AppIcons.home), label: AppStrings.home),
          BottomNavigationBarItem(icon: Icon(AppIcons.favorite), label: AppStrings.favorite),
          BottomNavigationBarItem(icon: Icon(AppIcons.profile), label: AppStrings.profile),
        ],
      ),
    );
  }
}