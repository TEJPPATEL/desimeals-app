import 'package:desimeals/screens/bottom_tabs_screen.dart';
import 'package:desimeals/screens/categories_screen.dart';
import 'package:desimeals/screens/category_meal_details_screen.dart';
import 'package:desimeals/screens/category_meals_screen.dart';
import 'package:desimeals/screens/favourite_categories_screen.dart';
import 'package:desimeals/screens/filters_screen.dart';
import 'package:desimeals/screens/form_example_screen.dart';
import 'package:desimeals/screens/product-overview/product_overview_screen.dart';
import 'package:desimeals/screens/todos_screen.dart';
import 'package:desimeals/utilites/screen_route.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen,primary: Colors.deepPurple)
      ),
      title: 'DesiMeals',
      routes :  {
       ScreenRoute.emptyRoute : (context) => ProductOverviewScreen(),
       ScreenRoute.formExample : (context) => FormExampleScreen(),
       ScreenRoute.catgories : (context) =>  const CategoriesScreen(),
       ScreenRoute.catgorieMeals: (context) => CategoryMealsScreen(),
       ScreenRoute.catgorieMealDetails: (context) => const CategoryMealsDetailsScreen(),
       ScreenRoute.favouritesMeals: (context) => const FavouriteCategoriesScreen(),
       ScreenRoute.filters: (context) => const FiltersScreen()
      },
      // initialRoute: ScreenRoute.catgories,
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(builder:(context) => const CategoriesScreen(),);
      // },
      // onUnknownRoute: (settings) {
      //   //you can define any fall back route here (like 404)
      //   return MaterialPageRoute(builder:(context) => const CategoriesScreen(),);
      // },
    );
  }
}