import 'package:hive/hive.dart';
import '../model/favorite_model.dart';

class FavoriteRepo {

  final Box box = Hive.box('favorites');

  List<FavoriteModel> getFavorites() {
    return box.values
        .map((item) => FavoriteModel.fromMap(Map<String, dynamic>.from(item)))
        .toList();
  }

  void addFavorite(FavoriteModel meal) {
    box.put(meal.id, meal.toMap());
  }

  void removeFavorite(String id) {
    box.delete(id);
  }

  bool isFavorite(String id) {
    return box.containsKey(id);
  }
}