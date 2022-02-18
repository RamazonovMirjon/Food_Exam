import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';
import 'package:food/widgets/my_text_from_fild.dart';

import '../widgets/my_appbar.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Card(
              color: ColorConst.blackColor,
              child: ListTile(
                title: bolttext(text: "SIGN UP", color: Colors.white),
                onTap: () {},
              ),
            ),
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
            Card(
              color: ColorConst.blueDarkColor,
              child: ListTile(
                leading: Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(
                      child: Icon(
                    Icons.facebook_sharp,
                    color: Colors.blue,
                  )),
                ),
                title: bolttext(
                    text: "CONNECT WITH FACEBOOK",
                    color: Colors.white,
                    align: TextAlign.start),
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
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/google.png'),
                      radius: 20,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  title: bolttext(
                      text: "CONNECT WITH GOOGLE",
                      color: Colors.white,
                      align: TextAlign.start),
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
