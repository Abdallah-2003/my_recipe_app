
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/details/data/model/detail_model.dart';
import 'package:my_recipe/features/details/data/repo/details_repo.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final DetailsRepo detailsRepo;
  DetailsCubit(this.detailsRepo) : super(DetailsInitial());

  Future<void> getDetails(String id) async {
    emit(DetailsLoading());
    final result = await detailsRepo.getDetails(id);
    result.fold(
      (error) => emit(DetailsFailure(msg: error)),
      (detailsModel) => emit(DetailsSuccess(details: detailsModel)),
    );
  }
}
