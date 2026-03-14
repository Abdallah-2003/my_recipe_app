import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart' show AppIcons;
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/favorites/data/repo/favorite_repo.dart';
import 'package:my_recipe/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';
import 'package:my_recipe/features/favorites/presentation/cubit/favorites_cubit/favorites_state.dart';
import 'package:my_recipe/features/favorites/presentation/views/widgets/favorite_card.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(FavoriteRepo())..loadFavorites(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return state is FavoriteLoading
              ? Center(child: CircularProgressIndicator())
              : state is FavoriteEmpty
              ? const Center(child: Text("No favorites yet", style: AppTextStyles.styleMedium14,))
              : state is FavoriteFailure
              ? Center(child: Text(state.message))
              : state is FavoriteSuccess
              ? Scaffold(
                  backgroundColor: AppColors.cfc,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                    leading: IconButton(
                      icon: const Icon(AppIcons.arrowBack, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                    title: Text(
                      AppStrings.myFavorite,
                      style: AppTextStyles.styleBold18,
                    ),
                  ),
                  body: GridView.builder(
                    padding: const EdgeInsets.all(24.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.65,
                        ),
                    itemCount: state.favorites.length,
                    itemBuilder: (context, index) {
                      return FavoriteCard(
                        favoriteModel: state.favorites[index],
                      );
                    },
                  ),
                )
              : SizedBox();
        },
      ),
    );
  }
}
