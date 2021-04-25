import 'package:flutter/material.dart';
import 'package:routes/main.dart';
import 'package:routes/routing/routing_constants.dart';

import 'package:routes/screens/firstScreen.dart';
import 'package:routes/screens/secondScreen.dart';

// RouteGenerator class to encapsulate the routing logic

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    //name of route which we get from settings object is checked inside switch case
    switch (settings.name) {
      case firstScreenRoute:
        return MaterialPageRoute(
          builder: (_) => FirstScreen(),
        );

      case secondScreenRoute:
        // validating the passed data's datatype
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondScreen(
              data: args,
            ),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Eror Screen'),
        ),
        body: Container(
          child: Text('error'),
        ),
      );
    });
  }
}
