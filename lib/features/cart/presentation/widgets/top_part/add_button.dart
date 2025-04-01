import 'package:flutter/material.dart';
import 'package:jabalprog/core/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // handle adding
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: AppColors.appPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
