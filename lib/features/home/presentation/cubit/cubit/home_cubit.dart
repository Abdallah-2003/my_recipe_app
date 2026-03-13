import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/home/data/model/categories_model.dart';
import 'package:my_recipe/features/home/data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  Future<void> getCategories() async {
    emit(HomeLoading());
    final result = await homeRepo.getCategories();
    result.fold(
      (error) => emit(HomeFailure(msg: error)), 
      (categories) => emit(HomeSuccess(categories: categories))
      
    );

  }
}
