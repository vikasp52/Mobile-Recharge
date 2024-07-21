import 'package:flutter/services.dart';

String? phoneValidation(value) {
  if ((value?.isEmpty ?? true) || (value!.length != 9)) {
    return 'Enter a valid mobile number';
  }
  return null;
}

String? nameValidation(value) {
  if (value?.isEmpty ?? true) {
    return 'Enter a valid nickname!';
  } else if (value!.length > 20) {
    return 'Maximum length is 20 characters';
  }
  return null;
}

var nicknameInputFormatters = <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z\\s]")),
];

var phoneInputFormatters = <TextInputFormatter>[
  FilteringTextInputFormatter.allow(
    RegExp("[0-9]"),
  ),
];
