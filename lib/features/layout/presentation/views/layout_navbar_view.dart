import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/layout/presentation/cubit/layout_cubit/layout_cubit.dart';

class LayoutNavbarView extends StatelessWidget {
  const LayoutNavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          int currentIndex = context.read<LayoutCubit>().currentIndex; 
          return Scaffold(
            body: context.read<LayoutCubit>().views[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                context.read<LayoutCubit>().changeCurrentIndex(index);
              },
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.cb8,
              selectedLabelStyle: AppTextStyles.styleBold10,
              unselectedLabelStyle: AppTextStyles.styleBold10,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.home),
                  label: AppStrings.home,
                ),
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.favorite),
                  label: AppStrings.favorite,
                ),
                BottomNavigationBarItem(
                  icon: Icon(AppIcons.profile),
                  label: AppStrings.profile,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
