import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
  );
}
