import 'package:jabalprog/features/home/domain/entities/food._entity.dart';

// Note this architecture (inheritence hierarchey) is made like this,
// because meal may contain ingredients in the future
abstract class MealEntity extends FoodEntity {
// List<IngredientEntity> ingredients;

  MealEntity({
    required super.id,
    required super.name,
    required super.imagePath,
    required super.description,
    required super.price,
    required super.isFavorite,
    required super.isCart,
  });
}
