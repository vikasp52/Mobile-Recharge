import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';

class Constants {
  static const String errorMessage = 'Something went wrong';
  static const List<int> topUpOptions = [5, 10, 20, 30, 50, 75, 100];
}

InputDecoration dropDownDecoration() {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: CustomColors.black,
        width: 1,
      ),
    ),
  );
}
