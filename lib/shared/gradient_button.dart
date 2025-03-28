import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/text_styles.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margins;

  const GradientButton(
      {super.key, required this.text, required this.onPressed, this.margins});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        margin: margins,
        padding: EdgeInsets.all(
          10.w,
        ),
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.appPrimaryColor,
              AppColors.cyanColor,
            ], stops: [
              .1,
              1
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.circular(10.0)),
        child: Text(text,
            style: TextStyles.ubuntuMedium(
              fontSize: 20.sp,
              color: Colors.white,
            )),
      ),
    );
  }
}
