import 'package:flutter/material.dart';
import '../core/constants/color_const.dart';
import 'Texts.dart';


//Sing in buttoni
Widget myBotton({required Color color, required String title}) => Card(
      color: color,
      child: ListTile(
        title: bolttext(text: title, color: Colors.white),
        onTap: () {},
      ),
    );


//facebook bottoni ikki joyda va rangi harxil bulgani
// uchun alohida nethod qildim.
Widget myFacebookBotton({required Color color}) => Card(
      color: color,
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
            color: color,
          )),
        ),
        title: bolttext(
            text: "CONNECT WITH FACEBOOK",
            color: Colors.white,
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
              color: Colors.white,
              align: TextAlign.start),
          onTap: () {},
        ),
      ),
    );
