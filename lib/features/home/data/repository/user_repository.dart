import 'package:dartz/dartz.dart';
import 'package:mobile_recharge/core/error/error_handler.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/home/data/data_source/user_mock_data.dart';

class UserRepository {
  final MockApiClient _userDataSource;
  UserRepository(
    MockApiClient userDataSource,
  ) : _userDataSource = userDataSource;

  Future<Either<String, User>?> getUserData() async {
    try {
      final response = await _userDataSource.getUserData();

      return Right(response);
    } catch (error) {
      return Left(
        handleError(error),
      );
    }
  }
}
