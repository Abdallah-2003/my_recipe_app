import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart' show AppIcons;
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/favorites/presentation/views/widgets/favorite_card.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cfc,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(AppIcons.arrowBack, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(AppStrings.myFavorite, style: AppTextStyles.styleBold18),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(24.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 16,
          childAspectRatio: 0.65,
        ),
        itemCount: 4, // داتا وهمية
        itemBuilder: (context, index) {
          return const FavoriteCard(
            title: 'Mediterranean Salmon Bowl',
            time: '25 mins',
            imagePath: 'assets/images/image.png',
          );
        },
      ),
    );
  }
}
