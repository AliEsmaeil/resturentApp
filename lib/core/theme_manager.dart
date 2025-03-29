import 'package:flutter/material.dart';
import 'package:jabalprog/core/app_colors.dart';

final class ThemeManager {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.appPrimaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.appPrimaryColor,
        secondary: AppColors.cyanColor,
      ),
      fontFamily: 'Ubuntu',
      iconTheme: IconThemeData(
        size: 20,
      ));

  // if you wanna expand the app, consider adding the dark theme
}
