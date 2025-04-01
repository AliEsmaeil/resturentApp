import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:provider/provider.dart';

class NumberOfMeals extends StatelessWidget {
  final FoodEntity food;
  const NumberOfMeals({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(builder: (_, controller, child) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.5),
            end: Offset.zero, // Move to original position
          ).animate(animation),
          child: child,
        ),
        child: Text(
          "${controller.everyMealCountAndPrice[food.id]?.$1}",
          key: ValueKey<int>(
              Random.secure().nextInt(1000)), // Important for animations
          style: TextStyles.ubuntuRegular(fontSize: 13, color: Colors.black),
        ),
      );
    });
  }
  //selector: (_, cartController) => cartController.everyMealCountAndPrice);
}
