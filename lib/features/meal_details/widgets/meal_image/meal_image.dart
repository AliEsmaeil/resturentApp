import 'package:flutter/material.dart';
import 'package:jabalprog/core/extensions/context_extension.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_image/image_clipper.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_image/stacked_fav_button.dart';

// i'm using a static image, if you wanna the one associated to the meal you have pressed,
// just uncomment the down code in line 29

class MealImage extends StatefulWidget {
  final FoodEntity food;
  const MealImage({super.key, required this.food});

  @override
  State<MealImage> createState() => _MealImageState();
}

class _MealImageState extends State<MealImage> {
  double opacity = 0.2;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipPath(
          clipper: ImageClipper(),
          clipBehavior: Clip.antiAlias,
          child: AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: opacity,
            curve: Curves.easeInOut,
            child: Container(
              alignment: Alignment.bottomRight,
              width: double.infinity,
              height: context.screenHeight * (2.4 / 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    //food.imagePath
                    'assets/images/code/burger_show.png', // comment this line and uncomment the above
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        StackedFavButton(food: widget.food),
      ],
    );
  }
}
