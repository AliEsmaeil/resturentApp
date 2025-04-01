import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:provider/provider.dart';

class DecreaseButton extends StatelessWidget {
  final FoodEntity food;
  const DecreaseButton({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    CartController controller = context.read<CartController>();
    return GestureDetector(
      onTap: () {
        print('Tapped to increase');
        controller.decreasecreaseCountOfOneMeal(id: food.id);
      },
      child: Container(
        width: 25.w,
        height: 25.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.grey.shade300,
        ),
        child: Center(
          child: Icon(
            Icons.remove,
            size: 15.w,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
