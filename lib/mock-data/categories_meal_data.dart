import 'package:desimeals/models/meal_model.dart';

class CategoriesMealMockData {
  static List<Meal> mealsData = [
    Meal(
        id: 1,
        title: 'First Meal',
        imageURL: 'https://picsum.photos/200/300',
        categories: ['C1'],
        affordability: Affordability.cheap,
        ingridents: [
          'Tamoto',
          'Chilly Sauce',
          'Onion Gravy',
          'Panner',
          'Chilly Flex',
          'Cheese',
          'Pasta'
        ]),
    Meal(
        id: 2,
        title: 'Second Meal',
        imageURL: 'https://picsum.photos/200/300',
        categories: ['C2'],
        affordability: Affordability.affordable,
        ingridents: [
          'Tamoto',
          'Chilly Sauce',
          'Onion Gravy',
          'Panner',
          'Chilly Flex',
          'Cheese',
          'Pasta'
        ]),
    Meal(
        id: 3,
        title: 'Third Meal',
        imageURL: 'https://picsum.photos/200/300',
        categories: ['C4', 'C3'],
        affordability: Affordability.expensive,
        ingridents: [
          'Tamoto',
          'Chilly Sauce',
          'Onion Gravy',
          'Panner',
          'Chilly Flex',
          'Cheese',
          'Pasta'
        ]),
    Meal(
        id: 4,
        title: 'Forth Meal',
        imageURL: 'https://picsum.photos/200/300',
        categories: ['C7', 'C1', 'C4', 'C5'],
        affordability: Affordability.affordable,
        ingridents: [
          'Tamoto',
          'Chilly Sauce',
          'Onion Gravy',
          'Panner',
          'Chilly Flex',
          'Cheese',
          'Pasta'
        ]),
    Meal(
        id: 5,
        title: 'Five Meal',
        imageURL: 'https://picsum.photos/200/300',
        categories: ['C5'],
        affordability: Affordability.affordable,
        ingridents: [
          'Tamoto',
          'Chilly Sauce',
          'Onion Gravy',
          'Panner',
          'Chilly Flex',
          'Cheese',
          'Pasta'
        ])
  ];
}
