import 'package:ecommerce/src/app/pages/home/home_view.dart';
import 'package:ecommerce/src/app/pages/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home_page':
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}