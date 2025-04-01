import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/features/cart/presentation/widgets/top_part/add_button.dart';
import 'package:jabalprog/features/cart/presentation/widgets/top_part/choice_container.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 5.w, top: 20.h),
        children: [
          Row(
            children: [
              ChoiceContainer(selected: true),
              ChoiceContainer(),
              AddButton(),
            ],
          ),
        ],
      ),
    );
  }
}
