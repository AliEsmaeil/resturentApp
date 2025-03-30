import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';

class MealDescription extends StatelessWidget {
  final FoodEntity food;
  const MealDescription({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descripcion',
            style: TextStyles.ubuntuMedium(
                fontSize: 16.sp, color: AppColors.textBlackColor),
          ),
          8.h.verticalSpacer,
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer bibendum libero eu lectus pretium, eget tempor lorem posuere. Proin in sem eros.',
            style: TextStyles.ubuntuRegular(
                fontSize: 12.sp, color: AppColors.textBlackColor),
          ),
          8.h.verticalSpacer,
        ],
      ),
    );
  }
}
