import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/category_entity.dart';

class CategoryItem extends StatelessWidget {
  static int callTimes = 0;
  List<Color> colors = [
    Color(0xffe1e3e3),
    Color(0xffbdf0f0),
    Color(0xfffad38c),
    Color.fromARGB(255, 237, 150, 209),
    Color(0xff90b0af),
  ];
  final CategoryEntity item;
  CategoryItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    callTimes++;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 50.w,
              height: 50.w,
              padding: EdgeInsets.all(10.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: colors[callTimes % colors.length],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      item.imagePath,
                    ),
                  )),
            )),
        5.h.verticalSpacer,
        Text(
          item.name,
          style: TextStyles.ubuntuLight(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}
