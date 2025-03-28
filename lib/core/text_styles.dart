import 'package:flutter/material.dart';

final class TextStyles {
  static TextStyle ubuntuLight(
          {required double fontSize, Color color = Colors.black}) =>
      TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
        color: color,
      );

  static TextStyle ubuntuRegular(
          {required double fontSize, Color color = Colors.black}) =>
      TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: color,
      );

  static TextStyle ubuntuMedium(
          {required double fontSize, Color color = Colors.black}) =>
      TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle ubuntuBold(
          {required double fontSize, Color color = Colors.black}) =>
      TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
      );
}
