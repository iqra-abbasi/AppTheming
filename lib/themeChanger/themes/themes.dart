

import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    primaryColor: Colors.deepPurple,

  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
      primaryColor: Colors.deepPurple,

  );
}