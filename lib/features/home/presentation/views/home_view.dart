import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/home/presentation/views/widgets/categories_grid.dart';
import 'package:my_recipe/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:my_recipe/features/home/presentation/views/widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 12),
              const CustomSearchBar(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.categories, style: AppTextStyles.styleBold18),
                  Text(AppStrings.seeAll, style: AppTextStyles.styleMedium14.copyWith(color: AppColors.primary)),
                ],
              ),
              const SizedBox(height: 16),
              const CategoriesGrid(),
            ],
          ),
        ),
      ),
    );
  }
}