import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_recharge/core/network/network.dart';
import 'package:mobile_recharge/features/home/data/repository/user_mock_data.dart';
import 'package:mobile_recharge/features/home/data/repository/user_repository.dart';

final serviceLocator = GetIt.I;
Future<void> setUp() async {
  serviceLocator.registerLazySingleton<Dio>(
    () => _createDio(),
  );

  serviceLocator.registerLazySingleton<UserRepository>(
    () => UserRepository(
      MockApiClient(),
    ),
  );
}

Dio _createDio() {
  final dioInterceptor = DioInterceptor();
  final dioFactory = DioFactory(
    baseUrl: NetworkConstants.baseUrl,
    dioInterceptor: dioInterceptor,
  );

  return dioFactory.create();
}
