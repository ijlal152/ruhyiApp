import 'package:flutter/material.dart';

const regular = "regular";
const semiBold = "medium";
const bold = "bold";
const urdu = "urduNajd";

class AppTheme{
  static ThemeData appTheme = ThemeData(
    fontFamily: regular,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.2
    )
    
  );
}