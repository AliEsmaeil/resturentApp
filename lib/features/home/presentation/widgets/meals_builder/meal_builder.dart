import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/meal_entity.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/details_button.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/fav_button.dart';
import 'package:jabalprog/features/meal_details/screens/meal_details_screen.dart';
import 'package:jabalprog/shared/asset_image.dart';

class MealBuilder extends StatelessWidget {
  final MealEntity meal;
  const MealBuilder({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(MealDetailsScreen.routeName, arguments: meal),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        //margin: const EdgeInsets.all(10),
        width: (context.screenWidth / 2) - 30.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color
              blurRadius: 8, // Blur intensity
              spreadRadius: 1, // Spread radius
              offset: Offset(0, 0), // Shadow position (x, y)
            ),
          ],
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FavButton(itemId: meal.id),
            ),
            Container(
              width: 80.w,
              height: 80.w,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.cyanColor, // Shadow color
                      blurRadius: 10, // Blur intensity
                      spreadRadius: 1, // Spread radius
                      offset: Offset(0, 0), // Shadow position (x, y)
                    ),
                  ],
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox.square(
                    dimension: 80.h,
                    child: ImageFromAsset(imagePath: meal.imagePath)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(meal.name,
                    maxLines: 1,
                    style: TextStyles.ubuntuRegular(
                        fontSize: 14, color: AppColors.textBlackColor)),
                5.h.verticalSpacer,
                Text(
                  maxLines: 1,
                  meal.description,
                  style: TextStyles.ubuntuLight(
                      fontSize: 12, color: AppColors.textBlackColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${meal.price}',
                        style: TextStyles.ubuntuBold(
                            fontSize: 16, color: AppColors.textBlackColor)),
                    DetailsButton(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
