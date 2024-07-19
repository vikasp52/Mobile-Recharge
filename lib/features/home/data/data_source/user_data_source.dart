// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:mobile_recharge/core/network/network.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'user_data_source.g.dart';

@retrofit.RestApi()
abstract class UserDataSource {
  factory UserDataSource(Dio dio) = _UserDataSource;

  @retrofit.GET(NetworkConstants.users)
  Future<User> getUserData();
}
