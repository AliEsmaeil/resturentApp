abstract class FoodEntity {
  final String id;
  final String name;
  final String imagePath;
  final String description;
  final double price;
  final bool isFavorite;
  final bool isCart;

  const FoodEntity({
    required this.id,
    required this.isCart,
    required this.isFavorite,
    required this.description,
    required this.imagePath,
    required this.name,
    required this.price,
  });
}
