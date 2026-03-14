import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/favorites/data/model/favorite_model.dart';
import 'package:my_recipe/features/favorites/data/repo/favorite_repo.dart';
import 'package:my_recipe/features/favorites/presentation/cubit/favorites_cubit/favorites_state.dart';


class FavoriteCubit extends Cubit<FavoriteState> {

  final FavoriteRepo repo;

  FavoriteCubit(this.repo) : super(FavoriteInitial());

  void loadFavorites() {
    try {

      final favorites = repo.getFavorites();

      if (favorites.isEmpty) {
        emit(FavoriteEmpty());
      } else {
        emit(FavoriteSuccess(favorites));
      }

    } catch (e) {
      emit(FavoriteFailure(e.toString()));
    }
  }

  void addFavorite(FavoriteModel meal) {
    repo.addFavorite(meal);
    loadFavorites();
  }

  void removeFavorite(String id) {
    repo.removeFavorite(id);
    loadFavorites();
  }

  bool isFavorite(String id) {
    return repo.isFavorite(id);
  }
}