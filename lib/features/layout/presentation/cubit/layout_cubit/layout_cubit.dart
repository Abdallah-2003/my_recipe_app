import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/features/auth/presentation/views/sign_in_view.dart';
import 'package:my_recipe/features/auth/presentation/views/sign_up_view.dart';
import 'package:my_recipe/features/home/presentation/views/home_view.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int currentIndex = 0;

  List<Widget> views = [HomeView(), SignInView(), SignUpView()];

  changeCurrentIndex(int index) {
    currentIndex = index;
    emit(Layoutchange());
  }
}
