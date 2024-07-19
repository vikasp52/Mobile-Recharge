import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mobile_recharge/features/home/data/data_source/data_source.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/gen/assets.gen.dart';

class MockApiClient implements UserDataSource {
  Future<String> loadMockData(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<User> getMockUsers() async {
    final response = await loadMockData(Assets.mockUsers);
    User user = User.fromJson(json.decode(response));
    return user;
  }

  @override
  Future<User> getUserData() async {
    return await getMockUsers();
  }
}
