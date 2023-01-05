import 'package:daily_ui/days/001.dart';
import 'package:flutter/material.dart';

final appRoutes = {
  '/001': (context) => const SignInPage(),
};

//FUNCTIONS
class Routes {
  simple(context, String route) {
    return Navigator.pushNamed(context, route);
  }

  constructed(context, Widget route) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => route),
    );
  }
}
