import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/features/home/presentation/controllers/favorites_controller.dart';
import 'package:provider/provider.dart';

class StackedFavButton extends StatelessWidget {
  final FoodEntity food;
  const StackedFavButton({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesController>(builder: (context, controller, child) {
      bool isFavorite = controller.isFavorite(food.id);

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 4.h),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
                isFavorite ? Colors.red.shade700 : Colors.grey),
          ),
          onPressed: () {
            controller.toggleFavorite(food.id);
          },
          icon: Icon(
            Icons.favorite_border_rounded,
            color: isFavorite ? Colors.white : Colors.white,
          ),
        ),
      );
    });
  }
}
