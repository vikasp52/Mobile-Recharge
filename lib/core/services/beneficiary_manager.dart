import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/gen/assets.gen.dart';
import 'package:path_provider/path_provider.dart';

class BeneficiaryManager {
  Future<String> get _localPath async {
    final directory = await getApplicationCacheDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/mock_user.json');
  }

  Future<User> loadUserData() async {
    try {
      final file = await _localFile;
      String jsonString = await file.readAsString();

      return User.fromJson(json.decode(jsonString));
    } catch (e) {
      final jsonString = await rootBundle.loadString(Assets.mockUser);
      return User.fromJson(json.decode(jsonString));
    }
  }

  Future<File> saveUserMockData(User user) async {
    final file = await _localFile;

    print('_saveUserMockData: $user');

    return file.writeAsString(json.encode(user));
  }
}
