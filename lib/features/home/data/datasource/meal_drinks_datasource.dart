import 'package:jabalprog/features/home/data/datasource/base_datasource.dart';
import 'package:jabalprog/features/home/data/datasource/local_data_holder.dart';

import 'package:jabalprog/features/home/domain/entities/category_entity.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';

final class MealDrinksDataSource extends BaseMealDrinksDataSource {
  // this data source return pure data, just simulate the response of an API,
  // while controllers manage the favorites and cart
  @override
  List<CategoryEntity> getCategories() {
    return DataHolder.mealCategories;
  }

  @override
  List<DrinksEntity> getDrinks() {
    return DataHolder.drinks;
  }

  @override
  List<MealEntity> getMeals() {
    return DataHolder.meals;
  }
}
