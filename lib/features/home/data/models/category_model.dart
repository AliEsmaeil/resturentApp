import 'package:jabalprog/features/home/domain/entities/category_entity.dart';

// these models are useful, it's role is serialization/deserialization process if any, but it doesn't do this forr now
final class CategoryModel extends CategoryEntity {
  CategoryModel({
    required super.id,
    required super.name,
    required super.imagePath,
  });
}
