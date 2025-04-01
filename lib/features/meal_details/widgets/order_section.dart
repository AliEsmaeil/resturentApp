import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/shared/gradient_button.dart';
import 'package:provider/provider.dart';

class OrderSection extends StatelessWidget {
  final FoodEntity food;
  const OrderSection({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              color: Colors.black12,
              offset: Offset(-1, -1),
              spreadRadius: 2)
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          10.w.horizontalSpacer,
          Consumer<CartController>(builder: (context, cartController, child) {
            return SizedBox(
              width: context.screenWidth * 3 / 5,
              child: GradientButton(
                  text: 'Ordenar ahara',
                  onPressed: () => cartController.addToCart(food.id)),
            );
          }),
          25.w.horizontalSpacer,
          Text('\$${food.price}',
              style: TextStyles.ubuntuBold(
                  fontSize: 22, color: AppColors.appPrimaryColor)),
        ],
      ),
    );
  }
}
