import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jabalprog/core/router.dart';
import 'package:jabalprog/core/theme_manager.dart';
import 'package:jabalprog/features/home/presentation/controllers/cart_controller.dart';
import 'package:jabalprog/features/home/presentation/controllers/favorites_controller.dart';
import 'package:jabalprog/features/home/presentation/controllers/home_controller.dart';
import 'package:jabalprog/features/welcome_screen/welcome_screen.dart';
import 'package:jabalprog/local_storage/hive_facade/hive_facade.dart';
import 'package:provider/provider.dart';

void main() async {
  await HiveFacade.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavoritesController(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeController(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.lightTheme,
          title: 'Restaurant App',
          routes: MyRouter.routes,
          initialRoute: WelcomeScreen.routeName,
          onGenerateRoute: MyRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
