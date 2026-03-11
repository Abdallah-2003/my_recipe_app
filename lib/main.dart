import 'package:flutter/material.dart';
import 'package:my_recipe/features/categories/presentation/views/category_view.dart';

void main() {
  runApp(const MyRecipe());
}

class MyRecipe extends StatelessWidget {
  const MyRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my recipe app',
      home: const CategoryView(),
    );
  }
}

