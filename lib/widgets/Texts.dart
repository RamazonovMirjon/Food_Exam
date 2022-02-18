import 'package:flutter/material.dart';

Widget bolttext({required String text, double size = 14}) => Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: Colors.black
      ),
    );

Widget greytext({required String text, double size = 14}) => Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
        fontSize: size,
      ),
    );
