import 'package:flutter/material.dart';
import '../core/constants/color_const.dart';
import 'Texts.dart';


//Sing in va Sign up buttoni
Widget myBotton({required String title}) => Card(
      color: ColorConst.greenColor,
      child: ListTile(
        title: bolttext(text: title, color: ColorConst.whiteColor),
        onTap: () {},
      ),
    );


//facebook bottoni ikki joydaligi
// uchun alohida nethod qildim.
Widget myFacebookBotton() => Card(
      color: ColorConst.blueDarkColor,
      child: ListTile(
        leading: Container(
          height: 28,
          width: 28,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
              child: Icon(
            Icons.facebook_sharp,
            color: ColorConst.blueDarkColor,
          )),
        ),
        title: bolttext(
            text: "CONNECT WITH FACEBOOK",
            color: ColorConst.whiteColor,
            align: TextAlign.start),
        onTap: () {},
      ),
    );

Widget myGoogleBotton() => Padding(
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
              color: ColorConst.whiteColor,
              align: TextAlign.start),
          onTap: () {},
        ),
      ),
    );
