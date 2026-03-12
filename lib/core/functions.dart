
import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

void snackBar({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.red,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
    ),
  );
}


Widget buildTag(String text, Color bgColor, Color textColor) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(
      text,
      style: AppTextStyles.styleBold12.copyWith(color: textColor),
    ),
  );
}


Widget buildStatItem(IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: AppColors.primary, size: 24),
      const SizedBox(height: 4),
      Text(label, style: AppTextStyles.styleMedium12),
    ],
  );
}

Widget buildDivider() {
  return Container(
    height: 30,
    width: 1,
    color: AppColors.cf0,
  );
}