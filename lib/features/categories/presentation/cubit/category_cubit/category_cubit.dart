
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/categories/data/model/category_model.dart';
import 'package:my_recipe/features/categories/data/repo/category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo categoryRepo;
  CategoryCubit(this.categoryRepo) : super(CategoryInitial());

  Future<void> getCategories(String category) async {
    emit(CategoryLoading());
    final result = await categoryRepo.getCategories(category);
    result.fold(
      (error) => emit(CategoryFailure(msg: error)),
      (categories) => emit(CategorySuccess(categories: categories)),
    );
  }
}
