import 'package:flutter/material.dart';
import 'package:flutter_todo_app/utilities/constants/colors.dart';

class AppTextStyle {
  static const dialogTitle = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static const dialogContent = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  static const textContent = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const s18w700 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const s25w700 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
}
