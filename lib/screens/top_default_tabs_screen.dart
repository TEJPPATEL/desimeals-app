import 'package:desimeals/screens/categories_screen.dart';
import 'package:desimeals/screens/favourite_categories_screen.dart';
import 'package:flutter/material.dart';

class TopDefaultTabBarsScreen extends StatefulWidget {
  const TopDefaultTabBarsScreen({super.key});

  @override
  State<TopDefaultTabBarsScreen> createState() => _TopDefaultTabBarsScreenState();
}

class _TopDefaultTabBarsScreenState extends State<TopDefaultTabBarsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Meals'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Catgories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favourites',
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [CategoriesScreen(), FavouriteCategoriesScreen()],
          ),
        ));
  }
}
