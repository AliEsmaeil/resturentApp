import 'package:flutter/material.dart';
import 'package:jabalprog/core/app_colors.dart';

class DetailsButton extends StatelessWidget {
  final double dimension;
  const DetailsButton({super.key, this.dimension = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            blurRadius: 8, // Blur intensity
            spreadRadius: 1, // Spread radius
            offset: const Offset(0, 0), // Shadow position (x, y)
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.navigate_next_rounded,
          color: AppColors.textBlackColor,
        ),
      ),
    );
  }
}
