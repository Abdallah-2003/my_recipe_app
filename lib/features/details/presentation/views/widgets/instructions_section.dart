import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class InstructionsSection extends StatelessWidget {
  const InstructionsSection({super.key, required this.instructions});

  final List<String> instructions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.instructions, style: AppTextStyles.styleBold18),
        const SizedBox(height: 16),
        ...List.generate(
          instructions.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: AppColors.c2a,
                  child: Text('${index + 1}', style: AppTextStyles.styleBold12),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    instructions[index],
                    style: AppTextStyles.styleRegular14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
