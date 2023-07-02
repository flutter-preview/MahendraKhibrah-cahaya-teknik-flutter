import 'package:cahayaa_teknik/src/utils/themes/widget_themes/elevated_button_themes.dart';
import 'package:cahayaa_teknik/src/utils/themes/widget_themes/input_decoration_themes.dart';
import 'package:cahayaa_teknik/src/utils/themes/widget_themes/outline_button_themes.dart';
import 'package:cahayaa_teknik/src/utils/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextThemes.light,
    elevatedButtonTheme: ElevatedButtonThemes.elevatedButtonThemeLight,
    outlinedButtonTheme: OutlineButtonThemes.outlinedButtonThemeLight,
    inputDecorationTheme: InputDecorationThemes.inputDecorationThemeLight,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextThemes.dark,
    elevatedButtonTheme: ElevatedButtonThemes.elevatedButtonThemeDark,
    outlinedButtonTheme: OutlineButtonThemes.outlinedButtonThemeDark,
    inputDecorationTheme: InputDecorationThemes.inputDecorationThemeDark,
  );
}
