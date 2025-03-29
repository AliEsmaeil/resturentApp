import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';

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
