import 'dart:math';

String generateId() {
  var random = Random();
  int randomNumber = random.nextInt(500);
  String id = '${DateTime.now().millisecondsSinceEpoch}-$randomNumber';
  return id;
}
