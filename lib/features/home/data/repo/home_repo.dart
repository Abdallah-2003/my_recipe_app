import 'package:dartz/dartz.dart';
import 'package:my_recipe/core/networking/api_constants.dart';
import 'package:my_recipe/core/networking/dio_helper.dart';
import 'package:my_recipe/features/home/data/model/categories_model.dart';

class HomeRepo {
  Future<Either<String, List<CategoriesModel>>> getCategories() async {
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.categoriesEndPoint,
      );
      final data = res.data;

      List<CategoriesModel> categories = [];
      for (var category in data['categories']) {
        categories.add(CategoriesModel.fromJson(category));
      }
      return right(categories);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
