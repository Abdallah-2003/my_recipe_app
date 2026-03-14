import 'package:flutter/material.dart';
import 'package:my_recipe/core/routing/routes.dart';
import 'package:my_recipe/features/auth/presentation/views/sign_in_view.dart';
import 'package:my_recipe/features/auth/presentation/views/sign_up_view.dart';
import 'package:my_recipe/features/categories/presentation/views/category_view.dart';
import 'package:my_recipe/features/details/presentation/views/recipe_details_view.dart';
import 'package:my_recipe/features/home/presentation/views/home_view.dart';
import 'package:my_recipe/features/layout/presentation/views/layout_navbar_view.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeView();
          },
        );

      case AppRoutes.loginView:
        return MaterialPageRoute(
          builder: (context) {
            return const SignInView();
          },
        );

      case AppRoutes.registerView:
        return MaterialPageRoute(
          builder: (context) {
            return const SignUpView();
          },
        );

      case AppRoutes.layoutView:
        return MaterialPageRoute(
          builder: (context) {
            return const LayoutNavbarView();
          },
        );

      case AppRoutes.categoryView:
        final title = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) {
            return CategoryView(title: title);
          },
        );

      case AppRoutes.detailsView:
        final id = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) {
            return RecipeDetailsView(id: id);
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No routes defined for ${settings.name}')),
          ),
        );
    }
  }
}
