import 'package:flutter/material.dart';
import 'package:namedroutesnavigation/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      // TODO Extrahiere die Argumente aus settings und erstelle eine Route fuer SurveyScreen,
      // TODO dem du den gesetzten title mitgibst

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
