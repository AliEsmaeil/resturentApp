import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/drinks_entity.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/details_button.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/fav_button.dart';
import 'package:jabalprog/shared/asset_image.dart';

class DrinkBuilder extends StatelessWidget {
  final DrinksEntity drink;
  const DrinkBuilder({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: context.screenWidth * (2 / 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 0),
          )
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: EdgeInsets.only(bottom: 5.h),
        child: Row(
          children: [
            Expanded(child: SizedBox()),
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Naturales',
                        style: TextStyles.ubuntuLight(
                            fontSize: 13, color: AppColors.greyColor)),
                    FavButton(itemId: drink.id),
                  ],
                ),
                Text(drink.name,
                    maxLines: 1,
                    style: TextStyles.ubuntuRegular(
                        fontSize: 14, color: AppColors.textBlackColor)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('\$${drink.price}',
                          style: TextStyles.ubuntuBold(
                              fontSize: 16, color: AppColors.textBlackColor)),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: DetailsButton(
                          dimension: 25.w,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
      Positioned(
        top: 10,
        left: 10,
        bottom: 0,
        right: context.screenWidth * (1 / 3),
        child: ImageFromAsset(
          imagePath: drink.imagePath,
          fit: BoxFit.cover,
        ),
      ),
    ]);
  }
}
