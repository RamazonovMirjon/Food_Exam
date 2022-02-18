import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';
import 'package:food/widgets/my_botton.dart';
import 'package:food/widgets/my_text_from_fild.dart';
import '../widgets/my_appbar.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(
          context: context, title: bolttext(text: "Forgot Password", size: 16)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bolttext(text: "Create Account", size: 34),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 2),
              child: greytext(
                  text: "Enter your Name, Email and Password", size: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  greytext(text: "for sign up. ", size: 16),
                  greytext(
                      text: "Already have accaunt?",
                      size: 16,
                      color: ColorConst.blueColor),
                ],
              ),
            ),
            mytextfromfild(myhintText: "Full Name"),
            mytextfromfild(myhintText: "Email Address"),
            mytextfromfild(myhintText: "Password", scureText: true),
            myBotton(context, title: "SIGN UP"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: greytext(
                  text:
                      "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                  size: 16),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 147),
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
