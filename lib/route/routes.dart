import 'package:flutter/material.dart';

import '../pages/login.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.login:
      return MaterialPageRoute(builder: (context) => LoginPage());
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
  }
}
