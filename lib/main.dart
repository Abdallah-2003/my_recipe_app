import 'package:flutter/material.dart';
import 'package:my_recipe/core/networking/supabase_services.dart';
import 'package:my_recipe/features/details/presentation/views/recipe_details_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseServices.init();
  runApp(const MyRecipe());
}

class MyRecipe extends StatelessWidget {
  const MyRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my recipe app',
      home: const RecipeDetailsView(),
    );
  }
}

