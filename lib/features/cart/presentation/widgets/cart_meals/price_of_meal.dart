import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:provider/provider.dart';

class PriceOfMeal extends StatelessWidget {
  final FoodEntity food;
  const PriceOfMeal({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      builder: (_, controller, child) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) => SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
          child: Text(
            "${controller.everyMealCountAndPrice[food.id]?.$2}",
            key: ValueKey<int>(Random.secure().nextInt(1000)),
            style:
                TextStyles.ubuntuBold(fontSize: 19, color: AppColors.cyanColor),
          ),
        );
      },
    );

    // selector: (_, cartController) => cartController.everyMealCountAndPrice);
  }
}
