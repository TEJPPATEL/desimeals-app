import 'package:desimeals/models/category_model.dart';
import 'package:desimeals/screens/category_meals_screen.dart';
import 'package:desimeals/utilites/screen_route.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.1),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () {
        Navigator.pushNamed(context, ScreenRoute.catgorieMeals,arguments: CategoryMealsScreenArgument(name: category.catName, id: category.catId));
      },
      child: Container(
          height: 100,
          width: 100,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [category.color, category.color.withOpacity(0.6)]),
           borderRadius: const BorderRadius.all(Radius.circular(10)) 
          ),
          child: Center(child: Text(category.catName,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))),
    );
  }
}
