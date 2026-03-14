import 'package:dartz/dartz.dart';
import 'package:my_recipe/core/networking/api_constants.dart';
import 'package:my_recipe/core/networking/dio_helper.dart';
import 'package:my_recipe/features/categories/data/model/category_model.dart';

class CategoryRepo {
  Future<Either<String, List<CategoryModel>>> getCategories(
    String category,
  ) async {
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.categoryEndPoint(category),
      );
      final data = res.data;

      List<CategoryModel> categories = [];
      for (var category in data['meals']) {
        categories.add(CategoryModel.fromJson(category));
      }
      return right(categories);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
