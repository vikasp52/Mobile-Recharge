part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  factory UserState({
    @Default(false) bool gettingUserDataInProgress,
    User? user,
    @Default('') String errorInGettingUserData,
  }) = _UserState;

  factory UserState.initial() => UserState(
        errorInGettingUserData: '',
        gettingUserDataInProgress: true,
        user: null,
      );
}
