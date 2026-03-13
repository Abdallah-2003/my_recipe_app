import 'package:flutter/material.dart';
import 'package:my_recipe/features/home/data/model/categories_model.dart';
import 'package:my_recipe/features/home/presentation/views/widgets/category_card.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.categories});

  final List<CategoriesModel> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          title: categories[index].strCategory ?? '',
          imagePath: categories[index].strCategoryThumb ?? '',
        );
      },
    );
  }
}
