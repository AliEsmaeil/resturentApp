import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
// these models are useful, it's role is serialization/deserialization process if any,
// but it doesn't do this forr now

final class DrinkModel extends DrinksEntity {
  DrinkModel(
      {required super.id,
      required super.name,
      required super.imagePath,
      required super.description,
      required super.price,
      required super.isFavorite,
      required super.isCart});
}
