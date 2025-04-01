import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/features/cart/presentation/screens/cart_screen.dart';
import 'package:jabalprog/shared/svg_image.dart';

class CenteredDockedButton extends StatelessWidget {
  const CenteredDockedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: IconButton(
        onPressed: () => Navigator.of(context).pushNamed(CartScreen.routeName),
        icon: SvgImage(
          color: Colors.white,
          imagePath: AssetsPaths.basketIcon,
          dimension: 25,
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.appPrimaryColor),
          alignment: Alignment.center,
          padding: WidgetStatePropertyAll(EdgeInsets.all(10.w)),
          elevation: WidgetStatePropertyAll(2),
          fixedSize: WidgetStatePropertyAll(Size(45.h, 45.h)),
          surfaceTintColor: WidgetStatePropertyAll(AppColors.appPrimaryColor),
          overlayColor: WidgetStatePropertyAll(AppColors.cyanColor),
        ),
      ),
    );
  }
}
