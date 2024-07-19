// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:mobile_recharge/core/network/network.dart';

class DioFactory {
  final String baseUrl;
  final DioInterceptor dioInterceptor;

  DioFactory({
    required this.baseUrl,
    required this.dioInterceptor,
  });

  Dio create() => Dio(_createBaseOptions())
    ..interceptors.add(
      dioInterceptor,
    );

  BaseOptions _createBaseOptions() => BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (_) => true,
        receiveTimeout: const Duration(minutes: 2),
        connectTimeout: const Duration(minutes: 2),
        headers: {
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        maxRedirects: 2,
      );
}
