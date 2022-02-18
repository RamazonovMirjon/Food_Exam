import 'package:flutter/material.dart';
import 'package:food/screens/walkthrough.dart';

class MyRoute {
  Route? onnGenerateRoute(RouteSettings s) {
    
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const WalkThroughPage());
      default:
    }
    return null;
    
  }
}
