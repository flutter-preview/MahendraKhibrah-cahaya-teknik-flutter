import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:flutter/material.dart';

class InputDecorationThemes {
  static const inputDecorationThemeLight = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: wDark,
    floatingLabelStyle: TextStyle(color: wDark),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: wDark),
    ),
  );

  static const inputDecorationThemeDark = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: dWhite,
    floatingLabelStyle: TextStyle(color: dWhite),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: dWhite),
    ),
  );
}
