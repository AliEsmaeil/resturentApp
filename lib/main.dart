import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/router.dart';
import 'package:jabalprog/features/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant App',
        routes: MyRouter.routes,
        initialRoute: WelcomeScreen.routeName,
      ),
    );
  }
}
