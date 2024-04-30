import 'package:desimeals/models/meal_model.dart';
import 'package:desimeals/utilites/screen_route.dart';
import 'package:flutter/material.dart';

class CategoryMealItem extends StatelessWidget {
  final Meal categoriesMealData;
  const CategoryMealItem({super.key,required this.categoriesMealData});

  void _selectMeal(BuildContext context,int id) {
    Navigator.pushNamed(context, ScreenRoute.catgorieMealDetails,arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context,categoriesMealData.id),
      child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 3,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: Image.network(
                        categoriesMealData.imageURL,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Colors.black.withOpacity(0.3)),
                        child: Text(
                          categoriesMealData.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.monetization_on_outlined),
                        Text(categoriesMealData.affordabilityText),
                      ],
                    ),
                    const Column(
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        Text("Affordable"),
                      ],
                    ),
                    const Column(
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        Text("Affordable"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
    );
  }
}