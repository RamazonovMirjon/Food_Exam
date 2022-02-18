import 'package:flutter/material.dart';
import 'package:food/screens/sign_in_page.dart';
import 'package:food/widgets/Texts.dart';

class WalkThroughPage extends StatefulWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  State<WalkThroughPage> createState() => _WalkThroughPageState();
}

class _WalkThroughPageState extends State<WalkThroughPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.pushReplacementNamed(context, '/signin');
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 34.0, top: 68.7, right: 33.46),
            child: SizedBox(
              height: 362.4,
              width: 307.5,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/pizza.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 67.8),
            child: bolttext(text: "Choose your food", size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: greytext(
                size: 16,
                text:
                    "Easily find your type of food craving and\nyou'll get delivery in wide range"),
          ),
        ],
      ),
    );
  }
}
