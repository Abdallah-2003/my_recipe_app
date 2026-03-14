import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';

class RecipeTopButtons extends StatelessWidget {
  const RecipeTopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  child: Icon(AppIcons.arrowBack, color: Colors.black),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: AppColors.white,
              child: IconButton(
                icon: const Icon(
                  AppIcons.favoriteBorder,
                  color: AppColors.primary,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
