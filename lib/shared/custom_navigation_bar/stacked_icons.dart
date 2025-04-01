import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/features/home/presentation/screens/home_screen.dart';
import 'package:jabalprog/shared/custom_navigation_bar/centered_docked_button.dart';
import 'package:jabalprog/shared/custom_navigation_bar/nav_bar_image.dart';
import 'package:jabalprog/shared/svg_image.dart';

class StackedIcons extends StatelessWidget {
  const StackedIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        NavBarImage(),
        Positioned(
            left: 25.w,
            right: 20.w,
            top: 0,
            bottom: 0,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: SvgImage(
                            color: AppColors.cyanColor,
                            imagePath: AssetsPaths.homeIcon),
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        },
                      ),
                      IconButton(
                        icon: SvgImage(
                          color: Colors.grey,
                          imagePath: AssetsPaths.shopIcon,
                          dimension: 20,
                        ),
                        onPressed: () {
                          // Handle search button press
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Center(
                  child: CenteredDockedButton(),
                )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_outline_rounded,
                            color: Colors.grey),
                        onPressed: () {
                          // Handle home button press
                        },
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          radius: 10.w,
                          foregroundImage: AssetImage(AssetsPaths.userImage),
                        ),
                        onPressed: () {
                          // Handle search button press
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
