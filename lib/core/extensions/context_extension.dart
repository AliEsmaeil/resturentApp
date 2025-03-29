import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenPaddingTop => MediaQuery.of(this).padding.top;
  double get screenPaddingBottom => MediaQuery.of(this).padding.bottom;
  double get screenPaddingLeft => MediaQuery.of(this).padding.left;
  double get screenPaddingRight => MediaQuery.of(this).padding.right;

  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  bool get isKeyboardOpen => MediaQuery.of(this).viewInsets.bottom > 0;
}
