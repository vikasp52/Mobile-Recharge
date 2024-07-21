// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/home/data/repository/user_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository)
      : super(
          UserState.initial(),
        ) {
    getUserDetails();
  }

  UserRepository userRepository;

  Future<void> getUserDetails() async {
    emit(
      state.copyWith(
        gettingUserDataInProgress: true,
        errorInGettingUserData: '',
      ),
    );

    final userDetails = await userRepository.getUserData();

    userDetails?.fold(
      (l) {
        emit(
          state.copyWith(
            gettingUserDataInProgress: false,
            errorInGettingUserData: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            gettingUserDataInProgress: false,
            user: r,
          ),
        );
      },
    );
  }
}
