import 'package:flutter/material.dart';
import 'package:jabalprog/features/home/data/datasource/meal_drinks_datasource.dart';
import 'package:jabalprog/features/home/data/repositories/meal_drinks_concrete_repo.dart';
import 'package:jabalprog/features/home/domain/entities/category_entity.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';
import 'package:jabalprog/features/home/domain/usecases/meal_drinks_usecase.dart';

final class HomeController with ChangeNotifier {
  late final MealDrinksUsecase _mealDrinksUsecase;

  HomeController()
      : _mealDrinksUsecase =
            MealDrinksUsecase(MealDrinksConcreteRepo(MealDrinksDataSource()));

  List<DrinksEntity> getDrinks() {
    return _mealDrinksUsecase.getDrinks();
  }

  List<MealEntity> getMeals() {
    return _mealDrinksUsecase.getMeals();
  }

  List<CategoryEntity> getCategories() {
    return _mealDrinksUsecase.getCategories();
  }
}
