import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:provider/provider.dart';

class DeleteButton extends StatelessWidget {
  final FoodEntity food;
  const DeleteButton({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    CartController controller = context.read<CartController>();
    return GestureDetector(
        onTap: () {
          controller.removeFromCart(food.id);
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.shade700,
          ),
          child: Icon(
            Icons.delete_outline_rounded,
            color: Colors.grey.shade200,
            size: 22.w,
          ),
        ));
  }
}
