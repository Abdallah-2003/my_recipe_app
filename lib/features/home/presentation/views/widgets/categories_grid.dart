import 'package:flutter/material.dart';
import 'package:my_recipe/features/home/presentation/views/widgets/category_card.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

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
      itemCount: 8,
      itemBuilder: (context, index) {
        return CategoryCard(
          title: 'BEEF',
          imagePath: 'assets/images/image.png',
        );
      },
    );
  }
}
