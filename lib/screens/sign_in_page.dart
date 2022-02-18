import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_appbar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: bolttext(text: "Sign In", size: 16)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bolttext(text: "Welcome to", size: 34),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 2),
              child:
                  greytext(text: "Enter your Phone number or Email", size: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  greytext(text: "for sign in, Or ", size: 16),
                  greytext(
                      text: "Create new account.",
                      size: 16,
                      color: ColorConst.blueColor),
                ],
              ),
            ),
            Card(
              color: ColorConst.cardColor,
              margin: const EdgeInsets.symmetric(vertical: 14),
              child: const ListTile(),
            ),
            const Card(
              child: ListTile(),
            ),
          ],
        ),
      ),
    );
  }
}
