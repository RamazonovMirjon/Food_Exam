import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';
import 'package:food/widgets/my_botton.dart';
import 'package:food/widgets/my_text_from_fild.dart';

import '../widgets/my_appbar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(title: bolttext(text: "Sign In", size: 16)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bolttext(text: "Welcome to", size: 34),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:
                  greytext(text: "Enter your Phone number or Email", size: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                greytext(text: "for sign in, Or ", size: 16),
                CupertinoButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: greytext(
                      text: "Create new account.",
                      size: 16,
                      color: ColorConst.blueColor),
                ),
              ],
            ),
            mytextfromfild(myhintText: "Name"),
            mytextfromfild(myhintText: "Password"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 110),
              child: greytext(text: "Forget Password?", size: 12),
            ),
            myBotton(title: "SIGN IN"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24, horizontal: 147),
              child: greytext(text: "Or", size: 16),
            ),
            myFacebookBotton(),
            myGoogleBotton(),
          ],
        ),
      ),
    );
  }
}
