import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class InstructionsSection extends StatelessWidget {
  const InstructionsSection({super.key});

  final List<String> instructions = const [
    'Bring a large pot of salted water to a boil. Cook the pasta according to package instructions until al dente. Reserve 1/2 cup of pasta water.',
    'While the pasta cooks, combine basil, garlic, nuts, and red pepper flakes in a food processor. Pulse until finely chopped.',
    'Slowly drizzle in olive oil while blending until smooth. Season with salt and pepper to taste.',
    'Toss the cooked pasta with the pesto sauce, adding reserved water as needed to reach desired consistency. Serve with grated parmesan.',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.instructions, style: AppTextStyles.styleBold18),
        const SizedBox(height: 16),
        ...List.generate(instructions.length, (index) => Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.c2a, 
                child: Text(
                  '${index + 1}',
                  style: AppTextStyles.styleBold12,
                ),
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
        )),
      ],
    );
  }
}