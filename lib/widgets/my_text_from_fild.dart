import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';

Widget mytextfromfild({required String myhintText, bool scureText = false}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: TextFormField(
        obscureText: scureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hoverColor: ColorConst.greyColor,
          hintText: myhintText,
        ),
      ),
    );
