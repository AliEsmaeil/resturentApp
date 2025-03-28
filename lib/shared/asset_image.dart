import 'package:flutter/material.dart';

class ImageFromAsset extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;

  const ImageFromAsset(
      {super.key,
      required this.imagePath,
      this.width,
      this.height,
      this.fit = BoxFit.contain});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: fit,
      width: width,
      height: height,
      alignment: Alignment.center,
    );
  }
}
