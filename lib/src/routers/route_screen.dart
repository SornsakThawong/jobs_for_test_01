import 'package:flutter_for_web/src/feature/first/screens/first_screen.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen.dart';
import 'package:get/get.dart';

import '../feature/initial/screens/nav_bar_screen.dart';
import '../feature/initial/screens/splash_screen.dart';
import 'route_path.dart';

class RouteScreen {
  static const initial = RoutePath.splash;

  static final routes = [
    GetPage(
      name: RoutePath.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RoutePath.navBar,
      page: () => NavBarScreen(),
    ),
    GetPage(
      name: RoutePath.first,
      page: () => const FirstScreen(),
    ),
    GetPage(
      name: RoutePath.second,
      page: () => const SecondScreen(),
    ),
    GetPage(
      name: RoutePath.third,
      page: () => const ThirdScreen(),
    ),
  ];
}
