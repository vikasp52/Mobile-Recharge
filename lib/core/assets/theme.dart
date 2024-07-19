import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';

final lightTheme = ThemeData(
  primaryColor: CustomColors.primary,
  scaffoldBackgroundColor: CustomColors.white.withOpacity(0.9),
  colorScheme: const ColorScheme.light(
    primary: CustomColors.primary,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    filled: true,
    hintStyle: TextStyle(color: Colors.grey[800]),
    fillColor: Colors.white70,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: CustomColors.white,
      textStyle: const TextStyle(
        fontSize: 14,
        color: CustomColors.white,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: CustomColors.primary,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
    ),
  ),
);
