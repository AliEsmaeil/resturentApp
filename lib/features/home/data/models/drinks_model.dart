import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';

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
