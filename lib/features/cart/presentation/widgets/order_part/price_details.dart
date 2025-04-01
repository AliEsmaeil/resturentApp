import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/cart/presentation/controllers/cart_controller.dart';
import 'package:provider/provider.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      //selector: (_, controller) => controller.totalPrice,
      builder: (context, controller, child) {
        return Container(
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.all(20.w),
          margin: EdgeInsets.only(bottom: 25.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.grey.shade200,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SubTotal',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 13, color: AppColors.textBlackColor)),
                  Text('${controller.totalPrice.toStringAsFixed(2)} usd',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 13, color: AppColors.textBlackColor)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Linvix',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 13, color: AppColors.textBlackColor)),
                  Text('Crediut',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 13, color: AppColors.textBlackColor)),
                ],
              ),
              12.verticalSpacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 16, color: AppColors.appPrimaryColor)),
                  Text('\$${controller.totalPrice.toStringAsFixed(2)} usd',
                      style: TextStyles.ubuntuRegular(
                          fontSize: 16, color: AppColors.appPrimaryColor)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
