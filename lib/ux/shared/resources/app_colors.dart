import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color grey = Color(0xFF2C2F34);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFFF0F0F0);
  static const Color transparent = Colors.transparent;
  static const Color darkTextGrey = Color(0xFF909090);

  static const Color greyInputBackground = Color(0xFFF5F5F5);

  static const lightShadow = BoxShadow(
    color: Color.fromRGBO(16, 24, 40, 0.1),
    blurRadius: 0.5,
    spreadRadius: 1,
    offset: Offset(0, 1),
  );
}

//This converts Hexadecimal color code to RGB or RGBA
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
