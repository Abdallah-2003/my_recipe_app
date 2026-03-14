import 'package:my_recipe/features/favorites/data/model/favorite_model.dart';


abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoading extends FavoriteState {}

class FavoriteSuccess extends FavoriteState {
  final List<FavoriteModel> favorites;

  FavoriteSuccess(this.favorites);
}

class FavoriteEmpty extends FavoriteState {}

class FavoriteFailure extends FavoriteState {
  final String message;

  FavoriteFailure(this.message);
}