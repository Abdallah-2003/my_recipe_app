
import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key, required this.onTap, required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(24),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.primaryLight, AppColors.primaryDark],
        ),
      ),
        child: Center(child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18))),
      ),
    );
  }
}