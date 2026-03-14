import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/features/details/data/repo/details_repo.dart';
import 'package:my_recipe/features/details/presentation/cubit/details_cubit/details_cubit.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/ingreidient_section.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/instructions_section.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_bottom.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_header_info.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_image_header.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_status_bar.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_top_bottoms.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailsCubit(DetailsRepo())..getDetails(id),
      child: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          return state is DetailsLoading
              ? Center(
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.white,
                  ),
                )
              : state is DetailsFailure
              ? Center(child: Text('there was an error, please try again'))
              : state is DetailsSuccess
              ? Scaffold(
                  backgroundColor: AppColors.white,
                  bottomNavigationBar: const RecipeBottomBar(),
                  body: Stack(
                    children: [
                      RecipeImageHeader(
                        imagePath: state.details.image ?? '',
                      ),

                      const RecipeTopButtons(),

                      SingleChildScrollView(
                        padding: const EdgeInsets.only(top: 280),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(32),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RecipeHeaderInfo(
                                  recipeName: state.details.name ?? '',
                                ),
                                SizedBox(height: 24),
                                RecipeStatsBar(),
                                SizedBox(height: 32),
                                IngredientsSection(
                                  ingredients: state.details.ingredients,
                                ),
                                SizedBox(height: 32),
                                InstructionsSection(
                                  instructions: state.details.instructions,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox();
        },
      ),
    );
  }
}
