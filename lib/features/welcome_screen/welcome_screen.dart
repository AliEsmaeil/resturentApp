import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/shared/asset_image.dart';
import 'package:jabalprog/shared/gradient_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome_screen';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox.shrink(),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  ImageFromAsset(imagePath: AssetsPaths.splashImage),
                  Text(
                    'Explore and order your favorite food',
                    style: TextStyles.ubuntuLight(
                        fontSize: 16.sp, color: AppColors.greyColor),
                  ),
                  50.verticalSpacer,
                  GradientButton(
                      text: 'Go',
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                      margins: EdgeInsets.symmetric(horizontal: 20.w)),
                ],
              ))
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
