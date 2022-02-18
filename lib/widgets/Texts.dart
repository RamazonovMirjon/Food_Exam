import 'package:flutter/material.dart';

Widget bolttext({
  required String text,
  double size = 14,
  Color color = const Color(0xFF010F07),
  TextAlign align = TextAlign.center,
}) =>
    Text(
      text,
      textAlign: align,
      style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: size, color: color),
    );

Widget greytext({
  required String text,
  double size = 14,
    Color color = const Color(0xFF010F07),

}) =>
    Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
