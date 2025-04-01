import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  final String imagePath;
  final Color color;
  final double dimension;

  const SvgImage(
      {super.key,
      required this.color,
      required this.imagePath,
      this.dimension = 25});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      fit: BoxFit.contain,
      width: dimension.w,
      height: dimension.w,
    );
  }
}
