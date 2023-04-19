import 'package:flutter/material.dart';

// Light mode colors
const primaryColor = Color(0xff5C77CE);
const primaryColorLight = Color(0xffABC8F7);

const backgroundColor = Color(0xff5C77CE);

class PrimaryColor extends MaterialStateColor {
  const PrimaryColor() : super(_defaultColor);

  static const int _defaultColor = 0xff0E1F55;
  static const int _pressedColor = 0xff0E1F55;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}
