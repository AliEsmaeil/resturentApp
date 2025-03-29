import 'package:flutter/material.dart';

class ImageFromAsset extends StatefulWidget {
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
  State<ImageFromAsset> createState() => _ImageFromAssetState();
}

class _ImageFromAssetState extends State<ImageFromAsset> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0; // Change opacity to fade in
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      child: Image.asset(
        widget.imagePath,
        fit: widget.fit,
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
      ),
    );
  }
}
