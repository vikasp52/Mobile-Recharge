// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'user')
  UserData? get user => throw _privateConstructorUsedError;
  List<Beneficiaries>? get beneficiaries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserData? user,
      List<Beneficiaries>? beneficiaries});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      beneficiaries: freezed == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<Beneficiaries>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserData? user,
      List<Beneficiaries>? beneficiaries});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_$UserImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      beneficiaries: freezed == beneficiaries
          ? _value._beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<Beneficiaries>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'user') required this.user,
      required final List<Beneficiaries>? beneficiaries})
      : _beneficiaries = beneficiaries;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserData? user;
  final List<Beneficiaries>? _beneficiaries;
  @override
  List<Beneficiaries>? get beneficiaries {
    final value = _beneficiaries;
    if (value == null) return null;
    if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(user: $user, beneficiaries: $beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._beneficiaries, _beneficiaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_beneficiaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'user') required final UserData? user,
      required final List<Beneficiaries>? beneficiaries}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserData? get user;
  @override
  List<Beneficiaries>? get beneficiaries;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({String id, double balance, bool isVerified});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double balance, bool isVerified});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? isVerified = null,
  }) {
    return _then(_$UserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.id, required this.balance, required this.isVerified});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String id;
  @override
  final double balance;
  @override
  final bool isVerified;

  @override
  String toString() {
    return 'UserData(id: $id, balance: $balance, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, balance, isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String id,
      required final double balance,
      required final bool isVerified}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get id;
  @override
  double get balance;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Beneficiaries _$BeneficiariesFromJson(Map<String, dynamic> json) {
  return _Beneficiaries.fromJson(json);
}

/// @nodoc
mixin _$Beneficiaries {
  String? get id => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  int? get totalTopUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiariesCopyWith<Beneficiaries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiariesCopyWith<$Res> {
  factory $BeneficiariesCopyWith(
          Beneficiaries value, $Res Function(Beneficiaries) then) =
      _$BeneficiariesCopyWithImpl<$Res, Beneficiaries>;
  @useResult
  $Res call({String? id, String? nickname, String? mobile, int? totalTopUp});
}

/// @nodoc
class _$BeneficiariesCopyWithImpl<$Res, $Val extends Beneficiaries>
    implements $BeneficiariesCopyWith<$Res> {
  _$BeneficiariesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = freezed,
    Object? mobile = freezed,
    Object? totalTopUp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopUp: freezed == totalTopUp
          ? _value.totalTopUp
          : totalTopUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiariesImplCopyWith<$Res>
    implements $BeneficiariesCopyWith<$Res> {
  factory _$$BeneficiariesImplCopyWith(
          _$BeneficiariesImpl value, $Res Function(_$BeneficiariesImpl) then) =
      __$$BeneficiariesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? nickname, String? mobile, int? totalTopUp});
}

/// @nodoc
class __$$BeneficiariesImplCopyWithImpl<$Res>
    extends _$BeneficiariesCopyWithImpl<$Res, _$BeneficiariesImpl>
    implements _$$BeneficiariesImplCopyWith<$Res> {
  __$$BeneficiariesImplCopyWithImpl(
      _$BeneficiariesImpl _value, $Res Function(_$BeneficiariesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = freezed,
    Object? mobile = freezed,
    Object? totalTopUp = freezed,
  }) {
    return _then(_$BeneficiariesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopUp: freezed == totalTopUp
          ? _value.totalTopUp
          : totalTopUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$BeneficiariesImpl implements _Beneficiaries {
  const _$BeneficiariesImpl(
      {required this.id,
      required this.nickname,
      required this.mobile,
      required this.totalTopUp});

  factory _$BeneficiariesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiariesImplFromJson(json);

  @override
  final String? id;
  @override
  final String? nickname;
  @override
  final String? mobile;
  @override
  final int? totalTopUp;

  @override
  String toString() {
    return 'Beneficiaries(id: $id, nickname: $nickname, mobile: $mobile, totalTopUp: $totalTopUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiariesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.totalTopUp, totalTopUp) ||
                other.totalTopUp == totalTopUp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, mobile, totalTopUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiariesImplCopyWith<_$BeneficiariesImpl> get copyWith =>
      __$$BeneficiariesImplCopyWithImpl<_$BeneficiariesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiariesImplToJson(
      this,
    );
  }
}

abstract class _Beneficiaries implements Beneficiaries {
  const factory _Beneficiaries(
      {required final String? id,
      required final String? nickname,
      required final String? mobile,
      required final int? totalTopUp}) = _$BeneficiariesImpl;

  factory _Beneficiaries.fromJson(Map<String, dynamic> json) =
      _$BeneficiariesImpl.fromJson;

  @override
  String? get id;
  @override
  String? get nickname;
  @override
  String? get mobile;
  @override
  int? get totalTopUp;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiariesImplCopyWith<_$BeneficiariesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
