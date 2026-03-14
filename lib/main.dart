import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_recipe/core/networking/dio_helper.dart';
import 'package:my_recipe/core/networking/supabase_services.dart';
import 'package:my_recipe/core/routing/app_router.dart';
import 'package:my_recipe/core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('favorites');
  await SupabaseServices.init();
  await DioHelper.init();
  
  runApp(const MyRecipe());
}

class MyRecipe extends StatelessWidget {
  const MyRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my recipe app',
      initialRoute: AppRoutes.splashView,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
