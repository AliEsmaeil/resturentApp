import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/shared/asset_image.dart';

class NavBarImage extends StatelessWidget {
  const NavBarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: ImageFromAsset(
      imagePath: AssetsPaths.bottomNavBar,
      width: double.infinity,
      height: 60.h,
      fit: BoxFit.cover,
    ));
  }
}
