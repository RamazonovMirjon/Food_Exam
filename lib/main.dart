import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/routes/my_route.dart';
import 'package:food/screens/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Food App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.light(
          primary: ColorConst.blueColor,
        )),
        initialRoute: '/',
        onGenerateRoute: _myRoute.onGenerateRoute,
      );
}
