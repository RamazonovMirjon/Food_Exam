import 'package:flutter/material.dart';
import 'package:food/widgets/Texts.dart';

class WalkThroughPage extends StatelessWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 34, top: 68.75, right: 33.46),
            child: Image(
              image: AssetImage("assets/images/pizza.png"),
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
