import 'package:flutter/material.dart';

Color mainBlue = Color(0xff6CC3C6);
Color lightBlue = Color(0xffdff9fa);
Color black = Color(0xff2F2F2F);
Color white = Colors.white;
Color grey = Color(0xff9A95AB);


//Vathssan Part --used a class to convert into color
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color bgColorLevel = HexColor("#262CD5DB");
Color smallText = HexColor("#FF9A95AB");
Color buttonbgColor = HexColor("#DB2F2F2F");
Color iconColor = HexColor("#FF6CC3C6");