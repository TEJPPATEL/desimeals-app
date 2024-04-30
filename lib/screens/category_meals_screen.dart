import 'package:desimeals/mock-data/categories_meal_data.dart';
import 'package:desimeals/models/meal_model.dart';
import 'package:desimeals/widgets/category_meal_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final List<Meal> meals = CategoriesMealMockData.mealsData;
  CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryMealsScreenArgument categoryMealsScreenArgument =
        ModalRoute.of(context)!.settings.arguments
            as CategoryMealsScreenArgument;

    List<Meal> categoriesMealData = meals.where((meal) {
      return meal.categories.contains(categoryMealsScreenArgument.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
          title: Text(categoryMealsScreenArgument.name),
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.7)),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            CategoryMealItem(categoriesMealData: categoriesMealData[index]),
        itemCount: categoriesMealData.length,
      ),
    );
  }
}

class CategoryMealsScreenArgument {
  final String name;
  final String id;
  const CategoryMealsScreenArgument({required this.name, required this.id});
}
