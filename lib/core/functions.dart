import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

void snackBar({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.red,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), backgroundColor: backgroundColor),
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
  return Container(height: 30, width: 1, color: AppColors.cf0);
}

Widget buildSectionTitle(String title) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 4),
      child: Text(
        title,
        style: AppTextStyles.styleBold14.copyWith(color: AppColors.cb8),
      ),
    ),
  );
}

Widget buildProfileItem(
  IconData icon,
  String title, {
  bool isToggle = false,
  String? trailingText,
}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: AppColors.cf5,
      radius: 16,
      child: Icon(icon, color: AppColors.primary, size: 18),
    ),
    title: Text(
      title,
      style: AppTextStyles.styleBold16.copyWith(color: AppColors.c2a),
    ),
    trailing: isToggle
        ? Switch(value: false, onChanged: (v) {})
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (trailingText != null)
                Text(
                  trailingText,
                  style: AppTextStyles.styleMedium14.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              const Icon(AppIcons.chevronRight, color: AppColors.cb8),
            ],
          ),
  );
}
