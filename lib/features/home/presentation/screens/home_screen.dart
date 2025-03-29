import 'package:flutter/material.dart';
import 'package:jabalprog/core/assets_paths.dart';
import 'package:jabalprog/features/home/presentation/widgets/catgories_builder/category_list.dart';
import 'package:jabalprog/features/home/presentation/widgets/drinks_builder/drinks_builder.dart';
import 'package:jabalprog/features/home/presentation/widgets/home_appbar/home_appbar.dart';
import 'package:jabalprog/features/home/presentation/widgets/meals_builder/meals_builder.dart';
import 'package:jabalprog/shared/asset_image.dart';
import 'package:jabalprog/shared/custom_navigation_bar/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarBuilder(),
        body: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Column(
            children: [
              CategoryList(),
              MealsBuilder(),
              DrinksBuilder(),
              CustomNavigationBar(),
            ],
          ),
        ));
  }
}
