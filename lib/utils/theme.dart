import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColorAlt,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    ),
  );
  static ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    ),
  );
}

class AppColors {
  static const Color primaryColor = Color.fromRGBO(219, 0, 0, 1);
  static const Color primaryColorAlt = Color.fromRGBO(90, 0, 0, 1);
}
