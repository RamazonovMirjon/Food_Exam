import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_appbar.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: bolttext(text: "Forgot Password", size: 16)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bolttext(text: "Create Account", size: 34),
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
              child: ListTile(
                onTap: () {},
              ),
            ),
            Card(
              color: ColorConst.cardColor,
              child: ListTile(
                onTap: () {},
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 110),
              child: greytext(text: "Forget Password?", size: 12),
            ),
            Card(
              color: ColorConst.greenColor,
              child: ListTile(
                title: bolttext(text: "SIGN IN", color: Colors.white),
                onTap: () {},
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24, horizontal: 147),
              child: greytext(text: "Or", size: 16),
            ),
            Card(
              color: ColorConst.blueDarkColor,
              child: ListTile(
                leading: Container(
                    height: 28,
                    width: 28,
                    color: Colors.white,
                    child: const Center(
                      child: Icon(Icons.facebook_sharp,color: Colors.blue,)
                    ),
                  ),
                title: bolttext(text: "CONNECT WITH FACEBOOK", color: Colors.white,align: TextAlign.start),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Card(
                color: ColorConst.blueColor,
                child: ListTile(
                  leading: Container(
                    height: 28,
                    width: 28,
                    color: Colors.white,
                    child: const Center(
                      child: Icon(Icons.laptop_mac_sharp,color: Colors.red,)
                    ),
                  ),
                  title:bolttext(text: "CONNECT WITH GOOGLE", color: Colors.white,align: TextAlign.start),
                  
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
