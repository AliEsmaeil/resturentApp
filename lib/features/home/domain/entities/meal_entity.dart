abstract class MealEntity {
  final String id;
  final String name;
  final String imagePath;
  final String description;
  final double price;
  final bool isFavorite;
  final bool isCart;

  MealEntity({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.isFavorite,
    required this.isCart,
  });
}
