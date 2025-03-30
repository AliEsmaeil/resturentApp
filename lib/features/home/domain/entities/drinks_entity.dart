import 'package:jabalprog/features/home/domain/entities/food._entity.dart';

abstract class DrinksEntity extends FoodEntity {
  DrinksEntity({
    required super.id,
    required super.name,
    required super.imagePath,
    required super.description,
    required super.price,
    required super.isFavorite,
    required super.isCart,
  });
}
