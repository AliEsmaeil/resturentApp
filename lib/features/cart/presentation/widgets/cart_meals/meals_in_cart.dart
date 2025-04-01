import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/meal_in_cart.dart';
import 'package:provider/provider.dart';

class MealsInCart extends StatelessWidget {
  const MealsInCart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controller = context.watch<CartController>();
    return Column(
      children: [
        15.h.verticalSpacer,
        SizedBox(
          height: context.screenHeight * .4,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(20.w),
              itemBuilder: (_, index) {
                return MealInCart(
                  food: controller.getItemById(id: controller.cart[index]),
                );
              },
              separatorBuilder: (_, index) => 25.horizontalSpacer,
              itemCount: controller.cart.length),
        ),
      ],
    );
  }
}
