import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/cart/presentation/widgets/cart_meals/meals_in_cart.dart';
import 'package:jabalprog/features/cart/presentation/widgets/order_part/order_part.dart';
import 'package:jabalprog/features/cart/presentation/widgets/top_part/top_part.dart';
import 'package:jabalprog/shared/custom_navigation_bar/custom_navigation_bar.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = 'cartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carrito'),
          automaticallyImplyLeading: false,
          titleTextStyle: TextStyles.ubuntuBold(
              fontSize: 20, color: AppColors.appPrimaryColor),
          centerTitle: true,
          toolbarHeight: 70.h,
          elevation: 3,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopPart(),
                    MealsInCart(),
                    OrderPart(),
                  ],
                ),
              ),
            ),
            CustomNavigationBar(),
          ],
        ));
  }
}
