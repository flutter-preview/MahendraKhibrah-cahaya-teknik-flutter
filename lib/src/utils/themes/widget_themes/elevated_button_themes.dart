import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonThemes {
  static final elevatedButtonThemeLight = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        backgroundColor: wTangerine,
        foregroundColor: wDark,
        padding: const EdgeInsets.all(15)),
  );
  static final elevatedButtonThemeDark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        backgroundColor: dTangerine,
        foregroundColor: dDark,
        padding: const EdgeInsets.all(15)),
  );
}
