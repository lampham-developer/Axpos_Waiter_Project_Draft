import 'package:axpos_project/route/route_path.dart';
import 'package:axpos_project/screen/home/home.dart';
import 'package:axpos_project/screen/launch/launch.dart';
import 'package:axpos_project/screen/login/login.dart';
import 'package:flutter/material.dart';

import '../util/debug.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Debug.logMessage(message: 'generateRoute: ${settings.name}');
    switch (settings.name) {
      case RoutePaths.launch:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RoutePaths.launch),
          builder: (_) => const LaunchPage(),
        );

      case RoutePaths.homePage:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RoutePaths.homePage),
          builder: (_) => const HomePage(),
        );

      case RoutePaths.loginPage:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RoutePaths.loginPage),
          builder: (_) => const LoginPage(),
        );

      default:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RoutePaths.launch),
          builder: (_) => const LaunchPage(),
        );
    }
  }
}
