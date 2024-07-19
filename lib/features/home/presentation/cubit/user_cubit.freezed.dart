// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  bool get gettingUserDataInProgress => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get errorInGettingUserData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool gettingUserDataInProgress,
      User? user,
      String errorInGettingUserData});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingUserDataInProgress = null,
    Object? user = freezed,
    Object? errorInGettingUserData = null,
  }) {
    return _then(_value.copyWith(
      gettingUserDataInProgress: null == gettingUserDataInProgress
          ? _value.gettingUserDataInProgress
          : gettingUserDataInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorInGettingUserData: null == errorInGettingUserData
          ? _value.errorInGettingUserData
          : errorInGettingUserData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool gettingUserDataInProgress,
      User? user,
      String errorInGettingUserData});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gettingUserDataInProgress = null,
    Object? user = freezed,
    Object? errorInGettingUserData = null,
  }) {
    return _then(_$UserStateImpl(
      gettingUserDataInProgress: null == gettingUserDataInProgress
          ? _value.gettingUserDataInProgress
          : gettingUserDataInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorInGettingUserData: null == errorInGettingUserData
          ? _value.errorInGettingUserData
          : errorInGettingUserData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  _$UserStateImpl(
      {this.gettingUserDataInProgress = false,
      this.user,
      this.errorInGettingUserData = ''});

  @override
  @JsonKey()
  final bool gettingUserDataInProgress;
  @override
  final User? user;
  @override
  @JsonKey()
  final String errorInGettingUserData;

  @override
  String toString() {
    return 'UserState(gettingUserDataInProgress: $gettingUserDataInProgress, user: $user, errorInGettingUserData: $errorInGettingUserData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.gettingUserDataInProgress,
                    gettingUserDataInProgress) ||
                other.gettingUserDataInProgress == gettingUserDataInProgress) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorInGettingUserData, errorInGettingUserData) ||
                other.errorInGettingUserData == errorInGettingUserData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, gettingUserDataInProgress, user, errorInGettingUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  factory _UserState(
      {final bool gettingUserDataInProgress,
      final User? user,
      final String errorInGettingUserData}) = _$UserStateImpl;

  @override
  bool get gettingUserDataInProgress;
  @override
  User? get user;
  @override
  String get errorInGettingUserData;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
