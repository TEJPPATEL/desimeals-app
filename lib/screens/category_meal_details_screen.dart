import 'package:desimeals/mock-data/categories_meal_data.dart';
import 'package:flutter/material.dart';

class CategoryMealsDetailsScreen extends StatelessWidget {
  const CategoryMealsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as int;
    final selectedMeal = CategoriesMealMockData.mealsData
        .firstWhere((meal) => meal.id == mealId);

    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.id}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      selectedMeal.imageURL,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: const Column(
                  children: [
                    Text(
                      "Ingridents",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),border: Border.all(width: 1)),
                margin: const EdgeInsets.all(15),
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    minVerticalPadding: 0,
                    leading: CircleAvatar(
                      child: Text('$index',),
                    ),
                    title: Text(selectedMeal.ingridents[index]),
                  ),
                  itemCount: selectedMeal.ingridents.length,
                ),
              )
            ],
          ),
        ));
  }
}
