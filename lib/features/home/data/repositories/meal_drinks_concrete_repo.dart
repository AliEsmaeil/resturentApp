import 'package:jabalprog/features/home/data/datasource/base_datasource.dart';
import 'package:jabalprog/features/home/domain/entities/category_entity.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';
import 'package:jabalprog/features/home/domain/repositories/meal_drinks_repo.dart';

final class MealDrinksConcreteRepo extends MealDrinksRepo {
  final BaseMealDrinksDataSource _baseMealDrinksDataSource;
  MealDrinksConcreteRepo(this._baseMealDrinksDataSource);
  @override
  List<CategoryEntity> getCategories() {
    return _baseMealDrinksDataSource.getCategories();
  }

  @override
  List<DrinksEntity> getDrinks() {
    return _baseMealDrinksDataSource.getDrinks();
  }

  @override
  List<MealEntity> getMeals() {
    return _baseMealDrinksDataSource.getMeals();
  }
}
