import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/functions.dart';
import 'package:my_recipe/core/routing/routes.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/favorites/data/model/favorite_model.dart';
import 'package:my_recipe/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';

class RecipeBottomBar extends StatelessWidget {
  const RecipeBottomBar({super.key, required this.favoriteModel});

  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: ElevatedButton.icon(
          onPressed: () {
            context.read<FavoriteCubit>().addFavorite(favoriteModel);
            snackBar(context: context, message: 'added successfully', backgroundColor: Colors.green);
            Navigator.pushNamed(context, AppRoutes.layoutView);
          },
          icon: const Icon(AppIcons.bookmarkBorder, color: AppColors.white),
          label:  Text(
            context.read<FavoriteCubit>().isFavorite(favoriteModel.id) ? AppStrings.view :
            AppStrings.addToFavorite,
            style: AppTextStyles.styleBold16,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
