import 'package:flutter/material.dart';
import 'package:food/widgets/Texts.dart';

class WalkThroughPage extends StatefulWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  State<WalkThroughPage> createState() => _WalkThroughPageState();
}

class _WalkThroughPageState extends State<WalkThroughPage> {
  @override
  //vazifasi 3 sekun kutadi va signin pagega utadi
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.pushReplacementNamed(context, '/signin');
    });
    //setStete qilishi kerak
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 34, top: 68, right: 33),
            child: SizedBox(
              height: 362,
              width: 307,
              child: Image(
                fit: BoxFit.fill,
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
