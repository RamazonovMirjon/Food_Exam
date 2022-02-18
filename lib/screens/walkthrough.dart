import 'package:flutter/material.dart';

class WalkThroughPage extends StatelessWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
    
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 34, top: 68.75, right: 33.46),
            child: Image(
              image: AssetImage("assets/images/pizza.png"),
            ),

          ),
          Text('Choose your food')
        ],
      ),
    );
  }
}
