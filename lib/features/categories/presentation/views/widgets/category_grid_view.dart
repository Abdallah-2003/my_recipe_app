import 'package:flutter/material.dart';
import 'package:my_recipe/features/categories/presentation/views/widgets/category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

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
      itemCount: 8,
      itemBuilder: (context, index) {
        return CategoryCard(
          image: 'assets/images/image.png',
          title: 'Crispy Fried Drumsticks',
          time: '20 mins',
        );
      },
    );
  }
}
