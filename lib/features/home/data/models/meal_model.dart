import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';
// these models are useful, it's role is serialization/deserialization process if any,
// but it doesn't do this forr now

final class MealModel extends MealEntity {
  MealModel(
      {required super.id,
      required super.name,
      required super.imagePath,
      required super.description,
      required super.price,
      required super.isFavorite,
      required super.isCart});
}
