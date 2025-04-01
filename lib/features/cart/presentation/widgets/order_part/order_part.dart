import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/features/cart/presentation/widgets/order_part/price_details.dart';
import 'package:jabalprog/shared/gradient_button.dart';

class OrderPart extends StatelessWidget {
  const OrderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PriceDetails(),
          GradientButton(
            text: 'Realizer Compra',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
