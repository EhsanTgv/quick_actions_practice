import 'package:flutter/material.dart';
import 'package:quick_actions_practice/first_page.dart';
import 'package:quick_actions_practice/home_page.dart';
import 'package:quick_actions_practice/second_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: 'Flutter Quick Actions'));
      case '/firstpage':
        return MaterialPageRoute(
            builder: (_) => const FirstPage(title: 'First Page Screen'));
      case '/secondpage':
        return MaterialPageRoute(
            builder: (_) => const SecondPage(title: 'Second Page Screen'));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
