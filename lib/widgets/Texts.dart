import 'package:flutter/material.dart';

//qalin yozuvlar uchun
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
      softWrap: true,
    );

//past rangli yozuvlash
Widget greytext({
  required String text,
  double size = 14,
  Color color = const Color(0xFF868686),
  TextAlign align = TextAlign.center,
}) =>
    Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
      softWrap: true,
    );
