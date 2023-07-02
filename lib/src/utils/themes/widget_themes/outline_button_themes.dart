import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:flutter/material.dart';

class OutlineButtonThemes {
  static final outlinedButtonThemeLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: wDark,
      side: const BorderSide(color: wDark),
      padding: const EdgeInsets.all(15),
    ),
  );
  static final outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: dWhite,
      side: const BorderSide(color: dWhite),
      padding: const EdgeInsets.all(15),
    ),
  );
}
