import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_icons.dart';
import 'package:my_recipe/core/functions.dart';

class RecipeStatsBar extends StatelessWidget {
  const RecipeStatsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildStatItem(AppIcons.accessTime, '25 mins'),
          buildDivider(),
          buildStatItem(AppIcons.barChart, 'Medium'),
          buildDivider(),
          buildStatItem(AppIcons.fire, '450 kcal'),
        ],
      ),
    );
  }

  
}