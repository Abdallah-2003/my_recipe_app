import 'package:flutter/material.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class SocialButton extends StatelessWidget {
  final String label;

  const SocialButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Center(
        child: Text(
          label,
          style: AppTextStyles.styleBold16.copyWith(
            color: const Color(0xFF334155),
          ),
        ),
      ),
    );
  }
}
