import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';

final lightTheme = ThemeData(
  primaryColor: CustomColors.primary,
  colorScheme: const ColorScheme.light(
    primary: CustomColors.primary,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: CustomColors.green,
  ),
  dividerTheme: const DividerThemeData(
    color: CustomColors.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 20,
        color: CustomColors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      backgroundColor: CustomColors.primary,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
    ),
  ),
);
