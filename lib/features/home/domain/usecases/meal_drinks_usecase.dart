import 'package:jabalprog/features/home/domain/entities/category_entity.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';
import 'package:jabalprog/features/home/domain/repositories/meal_drinks_repo.dart';

final class MealDrinksUsecase {
  final MealDrinksRepo _repo;

  MealDrinksUsecase(this._repo);

  List<DrinksEntity> getDrinks() {
    return _repo.getDrinks();
  }

  List<MealEntity> getMeals() {
    return _repo.getMeals();
  }

  List<CategoryEntity> getCategories() {
    return _repo.getCategories();
  }
}
