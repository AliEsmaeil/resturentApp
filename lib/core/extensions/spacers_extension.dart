import 'package:flutter/material.dart';

extension SpacersExtension on num {
  SizedBox get verticalSpacer => SizedBox(height: this.toDouble());
  SizedBox get horizontalSpacer => SizedBox(width: this.toDouble());
}
