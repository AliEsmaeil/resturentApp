import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double w = size.width, h = size.height;

    path.lineTo(0, h);
    path.quadraticBezierTo((0.75 / 16) * w, h - 22.h, (1 / 8) * w, h - 22.h);
    path.lineTo((7 / 8) * w, h - 22.h);
    path.quadraticBezierTo((15 / 16) * w, h - 22.h, w, h - 44.h);
    path.lineTo(w, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
