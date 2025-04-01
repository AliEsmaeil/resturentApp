import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/decrease_button.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/delete_button.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/increase_button.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/number_of_meals.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/price_of_meal.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';

class MealInCart extends StatelessWidget {
  final FoodEntity food;
  const MealInCart({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            margin: EdgeInsets.only(top: 12.w, right: 12.w),
            width: context.screenWidth * 3 / 5,
            height: context.screenHeight * .4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black12,
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    food.imagePath,
                  ),
                ),
                20.verticalSpacer,
                Text(food.name,
                    style: TextStyles.ubuntuBold(
                        fontSize: 20, color: AppColors.appPrimaryColor)),
                10.verticalSpacer,
                Text(food.name,
                    style: TextStyles.ubuntuRegular(
                        fontSize: 12, color: AppColors.textBlackColor)),
                30.verticalSpacer,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        DecreaseButton(food: food),
                        NumberOfMeals(food: food),
                        IncreaseButton(food: food),
                      ],
                    ),
                    PriceOfMeal(food: food),
                  ],
                )
              ],
            )),
        DeleteButton(food: food),
      ],
    );
  }
}
