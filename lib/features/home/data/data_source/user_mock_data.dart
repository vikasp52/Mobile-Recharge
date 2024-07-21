import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mobile_recharge/core/services/beneficiary_manager.dart';
import 'package:mobile_recharge/features/home/data/data_source/data_source.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/gen/assets.gen.dart';

class MockApiClient implements UserDataSource {
  final beneficiaryManager = BeneficiaryManager();

  Future<String> loadMockData(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<User> getMockUsers() async {
    User userData = await beneficiaryManager.loadUserData();
    final beneficiaries = userData.beneficiaries ?? [];

    if (beneficiaries.isNotEmpty) {
      return userData;
    }

    final response = await loadMockData(Assets.mockUser);
    User user = User.fromJson(json.decode(response));
    return user;
  }

  @override
  Future<User> getUserData() async {
    return await getMockUsers();
  }
}
