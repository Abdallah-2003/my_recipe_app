import 'package:flutter/material.dart';

class RecipeImageHeader extends StatelessWidget {
  final String imagePath;
  const RecipeImageHeader({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: 320,
      child: Image.network(imagePath, fit: BoxFit.cover),
    );
  }
}
