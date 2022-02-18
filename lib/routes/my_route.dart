import 'package:flutter/material.dart';
import 'package:food/screens/password_page.dart';
import 'package:food/screens/sign_in_page.dart';
import 'package:food/screens/walkthrough.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const WalkThroughPage());
      case '/signin':
        return MaterialPageRoute(builder: (context) => SignInPage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => PasswordPage());
      
    }
  }
}
