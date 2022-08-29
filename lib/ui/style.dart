import 'dart:ui';

import 'package:flutter/material.dart';

class AppStyle {
  static Color primaryColor = const Color(0xAB26A9C6);
  static Color primaryColorDark = const Color(0xFF196E79);

  static TextStyle mainText = const TextStyle(
    color: Colors.black,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainTextWhite = const TextStyle(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainTextThin = const TextStyle(
    color: Colors.black87,
    fontSize: 32.0,
    fontWeight: FontWeight.w300,
  );

  static TextStyle mainTextThinWhite = const TextStyle(
    color: Colors.white60,
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
  );
}