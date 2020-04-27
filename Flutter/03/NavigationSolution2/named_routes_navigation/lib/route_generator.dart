import 'package:flutter/material.dart';
import 'package:namedroutesnavigation/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // All routing logic is encapsulated and handled here, no need to duplicate code for routing purposes.
    switch (settings.name) {
      case HomeScreen.routeName:
        // MaterialPageRoute transitions to the new route using a platform specific animation.
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case SurveyScreen.routeName:
        // Access route arguments from settings
        final routeArgs = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
            builder: (context) => SurveyScreen(routeArgs['title']));
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
