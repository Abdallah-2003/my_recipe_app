import 'package:dartz/dartz.dart';
import 'package:my_recipe/core/networking/api_constants.dart';
import 'package:my_recipe/core/networking/dio_helper.dart';
import 'package:my_recipe/features/details/data/model/detail_model.dart';

class DetailsRepo {

  Future<Either<String, DetailModel>> getDetails(
    String id,
  ) async {
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.detailsEndPoint(id),
      );
      final data = res.data;

      final DetailModel detailModel = DetailModel.fromJson(data['meals'][0]);
       
      return right(detailModel);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}