import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/data/datasource/local_data_holder.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_ingredients/ingredient_item.dart';

class MealIngredients extends StatelessWidget {
  const MealIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 15.w,
            left: 25.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ingredients',
                  style: TextStyles.ubuntuMedium(
                      fontSize: 16.sp, color: AppColors.textBlackColor)),
              Text('10 Ingredients',
                  style: TextStyles.ubuntuLight(
                      fontSize: 12.sp, color: AppColors.greyColor))
            ],
          ),
        ),
        15.h.verticalSpacer,
        SizedBox(
          height: 100.h,
          width: double.infinity,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 25.w),
            itemCount: DataHolder.mealIngredients.length,
            separatorBuilder: (context, index) => 8.w.horizontalSpacer,
            itemBuilder: (context, index) => IngredientItem(
              ingredient: DataHolder.mealIngredients[index],
            ),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        ),
        20.verticalSpacer,
      ],
    );
  }
}
