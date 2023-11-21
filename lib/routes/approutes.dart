import 'package:flutter/material.dart';

import 'package:recipe_app/appnavigations/appnavigationscreen.dart';
import 'package:recipe_app/homescreen/homescreen.dart';
import 'package:recipe_app/recipiedetailscreen/recipedetailscreen.dart';


class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String recipeProcedureScreen = '/recipe_procedure_screen';

  static const String recipeIngridentScreen = '/recipe_ingrident_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    
    recipeIngridentScreen: (context) => RecipeDetailScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
