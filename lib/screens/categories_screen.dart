import 'package:desimeals/mock-data/categories_data.dart';
import 'package:desimeals/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Categoris'),
    //     backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.7)
    //   ),
    //   drawer: const Drawer(
    //     child: Text("Drawer"),
    //   ),
    //   body:
      
       Padding(
        padding:const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20
          ),
           children: CategoriesMockData.categorisData.map((category) => CategoryItem(category: category,)).toList()
         
        ),
      );
    // );
  }
}
