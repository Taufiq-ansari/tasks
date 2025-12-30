import 'package:api/pages/navigation/home.dart';
import 'package:flutter/material.dart';

class RouterFile {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());

      // case '/feed':
      //   return MaterialPageRoute(builder: (context) => FeedScreen());
      default:
        MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Text("not defined for a routes ${settings.name}"),
          ),
        );
    }
    throw Exception(" somethings wrong");
  }
}
