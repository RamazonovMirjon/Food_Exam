import 'package:flutter/material.dart';
import 'package:food/screens/home_page.dart';
import 'package:food/screens/password_page.dart';
import 'package:food/screens/sign_in_page.dart';
import 'package:food/screens/walkthrough.dart';

import '../screens/final_page.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const WalkThroughPage());
      case '/signin':
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const PasswordPage());
      case '/homepage':
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case '/finalpage':
        return MaterialPageRoute(builder: (context) => const FinalPage());
    }
    return null;
  }
}
