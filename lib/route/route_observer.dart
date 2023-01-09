import 'package:axpos_project/util/debug.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends RouteObserver {

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Debug.logMessage(message: 'Current Route ${route.settings.name}, Previous Route ${previousRoute?.settings.name}');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Debug.logMessage(message: 'Current Route ${route.settings.name}, Previous Route ${previousRoute?.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    Debug.logMessage(message: 'Current Route ${newRoute?.settings.name}, Previous Route ${oldRoute?.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Debug.logMessage(message: 'Current Route ${route.settings.name}, Previous Route ${previousRoute?.settings.name}');
  }
}
