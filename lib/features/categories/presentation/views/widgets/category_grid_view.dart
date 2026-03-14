import 'package:flutter/material.dart';
import 'package:my_recipe/features/categories/data/model/category_model.dart';
import 'package:my_recipe/features/categories/presentation/views/widgets/category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.65,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(categoryModel: categories[index]);
      },
    );
  }
}
