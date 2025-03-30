import 'package:flutter/material.dart';
import 'package:jabalprog/core/text_styles.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_description.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_image/meal_image.dart';
import 'package:jabalprog/features/meal_details/widgets/meal_ingredients/meal_ingredients.dart';
import 'package:jabalprog/features/meal_details/widgets/order_section.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = 'mealDetails';
  final FoodEntity food;
  const MealDetailsScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        titleTextStyle: TextStyles.ubuntuMedium(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MealImage(food: food),
                  MealDescription(food: food),
                  MealIngredients(),
                ],
              ),
            ),
          ),
          OrderSection(food: food),
        ],
      ),
    );
  }
}
