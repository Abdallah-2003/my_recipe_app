import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/categories/presentation/views/widgets/category_grid_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(AppIcons.arrowBack, color: AppColors.primary),
        ),
        title: Text(
          'Chicken Recipes',
          style: AppTextStyles.styleBold18.copyWith(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.search, color: AppColors.c8b),
          ),
        ],
      ),
      body: const SafeArea(child: CategoryGridView()),
    );
  }
}
