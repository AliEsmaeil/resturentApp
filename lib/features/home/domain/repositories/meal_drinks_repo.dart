import 'package:jabalprog/features/home/domain/entities/category_entity.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';

abstract class MealDrinksRepo {
  List<DrinksEntity> getDrinks();
  List<MealEntity> getMeals();
  List<CategoryEntity> getCategories();
}
