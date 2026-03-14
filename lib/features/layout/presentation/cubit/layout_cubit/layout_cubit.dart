import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/favorites/presentation/views/my_favorite_view.dart';
import 'package:my_recipe/features/home/presentation/views/home_view.dart';
import 'package:my_recipe/features/profile/presentation/views/profile_view.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int currentIndex = 0;

  List<Widget> views = [HomeView(), FavoritesView(), ProfileView()];

  changeCurrentIndex(int index) {
    currentIndex = index;
    emit(Layoutchange());
  }
}
