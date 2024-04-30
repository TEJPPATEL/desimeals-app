import 'package:desimeals/screens/categories_screen.dart';
import 'package:desimeals/screens/favourite_categories_screen.dart';
import 'package:desimeals/utilites/screen_route.dart';
import 'package:flutter/material.dart';

class BottomTabsScreen extends StatefulWidget {
  const BottomTabsScreen({super.key});

  @override
  State<BottomTabsScreen> createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {
      'screen': const CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'screen': const FavouriteCategoriesScreen(),
      'title': 'Favourites',
    }
  ];

  void _onSelectNavItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bootomNavigationBar() {
    return BottomNavigationBar(
        onTap: _onSelectNavItem,
        currentIndex: _selectedIndex,
        selectedFontSize: 10,
        iconSize: 25,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites')
        ]);
  }

  Widget _bootomNavigationBarUsingNavBarOnly() {
    return NavigationBar(
      height: 70,
      // elevation: 0,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (value) {
        setState(() {
          this._selectedIndex = value;
        });
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.category), label: 'Categories'),
        NavigationDestination(icon: Icon(Icons.star), label: 'Favourites')
      ],
    );
  }

  final containers = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.brown,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_screens[_selectedIndex]['title']),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.20,
                color: Theme.of(context).colorScheme.tertiary,
                alignment: Alignment.center,
                child: const Text(
                  "Cooking Up!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              ListTile(leading: const Icon(Icons.food_bank),title: const Text("Meals"),onTap: (){
                Navigator.of(context).pushReplacementNamed(ScreenRoute.emptyRoute);
              },),
              ListTile(leading: const Icon(Icons.star),title: const Text("Filters"),onTap: (){
                Navigator.of(context).pushReplacementNamed(ScreenRoute.filters);
              },),
            ],
          ),
        ),
        body: _screens[_selectedIndex]['screen'],
        // body: containers[_selectedIndex], // To test Bottom NavBar using NavBar Only
        bottomNavigationBar: _bootomNavigationBar());
  }
}
