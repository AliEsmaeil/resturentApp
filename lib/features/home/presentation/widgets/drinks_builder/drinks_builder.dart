import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/presentation/controllers/home_controller.dart';
import 'package:jabalprog/features/home/presentation/widgets/drinks_builder/drink_builder.dart';
import 'package:provider/provider.dart';

class DrinksBuilder extends StatelessWidget {
  const DrinksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('Recomendados',
              style: TextStyles.ubuntuMedium(
                  fontSize: 18.sp, color: AppColors.textBlackColor)),
        ),
        Expanded(
          child: Consumer<HomeController>(
              builder: (context, homeController, child) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 15, top: 8.w, bottom: 8.w),
              itemBuilder: (context, index) =>
                  DrinkBuilder(drink: homeController.getDrinks()[index]),
              separatorBuilder: (context, index) => 10.horizontalSpacer,
              itemCount: homeController.getDrinks().length,
            );
          }),
        ),
      ],
    ));
  }
}
