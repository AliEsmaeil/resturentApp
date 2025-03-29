import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/presentation/controllers/home_controller.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/meal_builder.dart';
import 'package:provider/provider.dart';

class MealsBuilder extends StatelessWidget {
  const MealsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // don't worry, it will never get called again (no notifications are emmited)
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 8.h),
      height: context.screenHeight / 2.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.verticalSpacer,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Productos Populares',
              style: TextStyles.ubuntuMedium(
                  fontSize: 18.sp, color: AppColors.textBlackColor),
            ),
          ),
          8.h.verticalSpacer,
          Expanded(
            child: Consumer<HomeController>(
                builder: (context, homeController, child) {
              return ListView.separated(
                padding: EdgeInsets.only(left: 15, top: 8.w, bottom: 8.w),
                itemBuilder: (context, index) => MealBuilder(
                  meal: homeController.getMeals()[index],
                ),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                // padding: EdgeInsets.symmetric(horizontal: 20.w),

                separatorBuilder: (context, index) => 8.horizontalSpacer,
                itemCount: homeController.getMeals().length,
              );
            }),
          ),
        ],
      ),
    );
  }
}
