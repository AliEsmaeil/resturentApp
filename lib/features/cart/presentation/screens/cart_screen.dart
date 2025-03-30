import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/text_styles.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = 'cartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        titleTextStyle: TextStyles.ubuntuBold(
            fontSize: 20, color: AppColors.appPrimaryColor),
        centerTitle: true,
        toolbarHeight: 70.h,
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
    );
  }
}
