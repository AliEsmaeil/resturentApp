import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/features/home/data/models/category_model.dart';
import 'package:jabalprog/features/home/data/models/drinks_model.dart';
import 'package:jabalprog/features/home/data/models/meal_model.dart';

final class DataHolder {
  static final mealCategories = <CategoryModel>[
    CategoryModel(id: '1', name: 'Tacos', imagePath: AssetsPaths.tacosCategory),
    CategoryModel(
        id: '2', name: 'Burger', imagePath: AssetsPaths.burgerCategory),
    CategoryModel(id: '3', name: 'Pizza', imagePath: AssetsPaths.pizzaCategory),
    CategoryModel(id: '4', name: 'Firas', imagePath: AssetsPaths.firasCategory),
    CategoryModel(
        id: '5', name: 'HotDog', imagePath: AssetsPaths.hotdogCategory),
  ];
  static final drinks = <DrinkModel>[
    DrinkModel(
        id: '6',
        name: 'Malteados tropicales',
        imagePath: AssetsPaths.drinksImage,
        description: 'Lorem ipsum description',
        price: 12.58,
        isFavorite: false,
        isCart: false),
    DrinkModel(
        id: '7',
        name: 'Malteados tropicales',
        imagePath: AssetsPaths.drinksImage2,
        description: 'Lorem ipsum description',
        price: 12.58,
        isFavorite: false,
        isCart: false),
    DrinkModel(
        id: '8',
        name: 'Malteados tropicales',
        imagePath: AssetsPaths.drinksImage,
        description: 'Lorem ipsum description',
        price: 12.58,
        isFavorite: false,
        isCart: false),
    DrinkModel(
        id: '9',
        name: 'Malteados tropicales',
        imagePath: AssetsPaths.drinksImage2,
        description: 'Lorem ipsum description',
        price: 12.58,
        isFavorite: false,
        isCart: false),
  ];

  static final meals = <MealModel>[
    MealModel(
        id: '10',
        name: 'Pizza Clasica',
        imagePath: AssetsPaths.pizzaCategory,
        description: 'Lorem ipsum description',
        price: 24,
        isFavorite: false,
        isCart: false),
    MealModel(
        id: '11',
        name: 'Hamburger Mix',
        imagePath: AssetsPaths.burgerCategory,
        description: 'Lorem ipsum description',
        price: 24,
        isFavorite: false,
        isCart: false),
    MealModel(
        id: '12',
        name: 'Firas',
        imagePath: AssetsPaths.firasCategory,
        description: 'Lorem ipsum description',
        price: 24,
        isFavorite: false,
        isCart: false),
    MealModel(
        id: '13',
        name: 'HotDog',
        imagePath: AssetsPaths.hotdogCategory,
        description: 'Lorem ipsum description',
        price: 24,
        isFavorite: false,
        isCart: false),
    MealModel(
        id: '14',
        name: 'Tacos Clasica',
        imagePath: AssetsPaths.tacosCategory,
        description: 'Lorem ipsum description',
        price: 24,
        isFavorite: false,
        isCart: false)
  ];
}
