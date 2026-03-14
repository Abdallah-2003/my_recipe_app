import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/favorites/data/model/favorite_model.dart';
import 'package:my_recipe/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';

class FavoriteCard extends StatelessWidget {

  final FavoriteModel favoriteModel;

  const FavoriteCard({
    super.key, required this.favoriteModel,
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  favoriteModel.image,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: GestureDetector(
                  onTap: () {
                    context.read<FavoriteCubit>().removeFavorite(favoriteModel.id);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.white,
                    radius: 16,
                    child: const Icon(
                      AppIcons.delete,
                      color: AppColors.primary,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        Text(
          favoriteModel.title,
          style: AppTextStyles.styleBold14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Icon(AppIcons.accessTime, size: 14, color: AppColors.cb8),
            const SizedBox(width: 4),
            Text('20 mins', style: AppTextStyles.styleRegular12),
          ],
        ),
      ],
    );
  }
}
