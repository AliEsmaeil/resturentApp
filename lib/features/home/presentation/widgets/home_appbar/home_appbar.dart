import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/presentation/widgets/home_appbar/search_field.dart';
import 'package:jabalprog/shared/asset_image.dart';

@override
PreferredSizeWidget appBarBuilder() {
  return AppBar(
    leading: SearchField(),
    leadingWidth: 130.w,
    backgroundColor: Colors.white,
    elevation: 3,
    shadowColor: Colors.black,
    title: Text(
      'Inicio',
      style:
          TextStyles.ubuntuBold(fontSize: 20, color: AppColors.appPrimaryColor),
    ),
    centerTitle: true,
    surfaceTintColor: Colors.white,
    toolbarHeight: 70.h,
    actions: [
      IconButton(
        icon: Icon(
          Icons.notifications_outlined,
          color: AppColors.cyanColor,
        ),
        onPressed: () {
          // Handle notification button press
        },
      ),
      ImageFromAsset(
        imagePath: AssetsPaths.offerIcon,
        height: 20.w,
        width: 20.w,
      ),
      Padding(padding: EdgeInsets.only(right: 25.w)),
    ],
  );
}
