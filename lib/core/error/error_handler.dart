import 'package:dio/dio.dart';
import 'package:mobile_recharge/core/utils/utils.dart';

String handleDioError(DioException error) {
  print('Error is: ${error}');
  if (error.response != null) {
    return error.response!.data;
  } else {
    return Constants.errorMessage;
  }
}

String handleError(dynamic error) {
  if (error is DioException) {
    return handleDioError(error);
  } else {
    return error.message ?? Constants.errorMessage;
  }
}
