String? phoneValidation(value) {
  if ((value?.isEmpty ?? true) || (value!.length != 10)) {
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
