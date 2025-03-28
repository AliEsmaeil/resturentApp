import 'package:flutter/material.dart';
import 'package:jabalprog/features/home/presentation/screens/home_screen.dart';
import 'package:jabalprog/features/welcome_screen/welcome_screen.dart';

final class MyRouter {
  static Map<String, WidgetBuilder> get routes => {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      };

  MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
