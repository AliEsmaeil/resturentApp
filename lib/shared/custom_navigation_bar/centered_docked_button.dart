import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';

class CenteredDockedButton extends StatelessWidget {
  const CenteredDockedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_basket_outlined,
          size: 25.w,
          color: Colors.white,
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.appPrimaryColor),
          alignment: Alignment.center,
          padding: WidgetStatePropertyAll(EdgeInsets.all(5.w)),
          elevation: WidgetStatePropertyAll(2),
          fixedSize: WidgetStatePropertyAll(Size(35.h, 35.h)),
          surfaceTintColor: WidgetStatePropertyAll(AppColors.appPrimaryColor),
          overlayColor: WidgetStatePropertyAll(AppColors.cyanColor),
        ),
      ),
    );
  }
}
