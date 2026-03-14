import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/theme/text_styles.dart';
import 'package:my_recipe/features/categories/data/repo/category_repo.dart';
import 'package:my_recipe/features/categories/presentation/cubit/category_cubit/category_cubit.dart';
import 'package:my_recipe/features/categories/presentation/views/widgets/category_grid_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(CategoryRepo())..getCategories(title),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state is CategoryLoading
              ? Center(
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.white,
                  ),
                )
              : state is CategoryFailure
              ? Center(child: Text('there was an error, please try again'))
              : state is CategorySuccess && state.categories.isEmpty
              ? Center(child: Text('no categories found'))
              : state is CategorySuccess && state.categories.isNotEmpty
              ? Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    scrolledUnderElevation: 0,
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        AppIcons.arrowBack,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      '$title Recipes',
                      style: AppTextStyles.styleBold18.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(AppIcons.search, color: AppColors.c8b),
                      ),
                    ],
                  ),
                  body: SafeArea(
                    child: CategoryGridView(categories: state.categories),
                  ),
                )
              : SizedBox();
        },
      ),
    );
  }
}
