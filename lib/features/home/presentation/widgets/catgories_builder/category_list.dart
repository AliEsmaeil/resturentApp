import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/core/extensions/spacers_extension.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/presentation/controllers/home_controller.dart';
import 'package:jabalprog/features/home/presentation/widgets/catgories_builder/category_item.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    // don't worry, it will never get called again (no notifications are emmited)
    return SizedBox(
      height: context.screenHeight / 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          15.h.verticalSpacer,
          Text(
            'Explorar Categorias',
            style: TextStyles.ubuntuMedium(
                fontSize: 18.sp, color: AppColors.textBlackColor),
          ),
          5.verticalSpacer,
          Expanded(
            child: Consumer<HomeController>(
                builder: (context, homeController, child) {
              return ListView.separated(
                itemBuilder: (context, index) =>
                    CategoryItem(item: homeController.getCategories()[index]),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => 20.horizontalSpacer,
                itemCount: homeController.getCategories().length,
              );
            }),
          ),
        ],
      ),
    );
  }
}
