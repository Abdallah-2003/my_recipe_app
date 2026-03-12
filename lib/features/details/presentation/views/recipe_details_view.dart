import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/ingreidient_section.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/instructions_section.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_bottom.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_header_info.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_image_header.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_status_bar.dart';
import 'package:my_recipe/features/details/presentation/views/widgets/recipe_top_bottoms.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: const RecipeBottomBar(),
      body: Stack(
        children: [
          const RecipeImageHeader(imagePath: 'assets/images/image.png'),

          const RecipeTopButtons(),

          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 280),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeHeaderInfo(),
                    SizedBox(height: 24),
                    RecipeStatsBar(),
                    SizedBox(height: 32),
                    IngredientsSection(),
                    SizedBox(height: 32),
                    InstructionsSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
