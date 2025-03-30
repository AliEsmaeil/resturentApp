import 'package:flutter/material.dart';
import 'package:jabalprog/features/cart/presentation/screens/cart_screen.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/features/home/presentation/screens/home_screen.dart';
import 'package:jabalprog/features/meal_details/screens/meal_details_screen.dart';
import 'package:jabalprog/features/welcome_screen/welcome_screen.dart';

final class MyRouter {
  /*static Map<String, WidgetBuilder> get routes => {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(food: food)
      };
*/
  MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case MealDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (_) =>
                MealDetailsScreen(food: settings.arguments as FoodEntity));
      case CartScreen.routeName:
        return MaterialPageRoute(builder: (_) => CartScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
