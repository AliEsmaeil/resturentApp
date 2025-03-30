import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/ingredient_entity.dart';

class IngredientItem extends StatelessWidget {
  final IngredientEntity ingredient;
  const IngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 65.h,
          height: 70.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage(
                    ingredient.image,
                  ),
                  fit: BoxFit.cover)),
        ),
        5.h.verticalSpacer,
        Text(ingredient.name,
            style: TextStyles.ubuntuLight(
                fontSize: 12.sp, color: AppColors.greyColor))
      ],
    );
  }
}
