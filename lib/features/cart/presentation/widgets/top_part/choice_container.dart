import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/shared/svg_image.dart';

class ChoiceContainer extends StatelessWidget {
  final bool selected;
  const ChoiceContainer({super.key, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth / 2.77,
      height: 45.h,
      padding: EdgeInsets.all(8.r),
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
          color: selected ? AppColors.appPrimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: selected
              ? null
              : Border.all(color: Colors.grey.shade300, width: 1)),
      child: Row(
        children: [
          SvgImage(
              color: selected ? Colors.white : Colors.black,
              imagePath: AssetsPaths.homeIcon),
          10.w.horizontalSpacer,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mi Trefajo',
                style: TextStyles.ubuntuMedium(
                    fontSize: 13,
                    color: selected ? Colors.white : Colors.black),
              ),
              Text('Lorem ipsum',
                  overflow: TextOverflow.fade,
                  style: selected
                      ? TextStyles.ubuntuMedium(
                          fontSize: 11, color: Colors.white)
                      : TextStyles.ubuntuRegular(
                          fontSize: 11, color: AppColors.greyColor))
            ],
          )
        ],
      ),
    );
  }
}
