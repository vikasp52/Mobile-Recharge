// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopUpState {
  bool get topUpInProgress => throw _privateConstructorUsedError;
  bool get topUpDone => throw _privateConstructorUsedError;
  String get errorInPerformingTopUp => throw _privateConstructorUsedError;
  int get topUpAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopUpStateCopyWith<TopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpStateCopyWith<$Res> {
  factory $TopUpStateCopyWith(
          TopUpState value, $Res Function(TopUpState) then) =
      _$TopUpStateCopyWithImpl<$Res, TopUpState>;
  @useResult
  $Res call(
      {bool topUpInProgress,
      bool topUpDone,
      String errorInPerformingTopUp,
      int topUpAmount});
}

/// @nodoc
class _$TopUpStateCopyWithImpl<$Res, $Val extends TopUpState>
    implements $TopUpStateCopyWith<$Res> {
  _$TopUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpInProgress = null,
    Object? topUpDone = null,
    Object? errorInPerformingTopUp = null,
    Object? topUpAmount = null,
  }) {
    return _then(_value.copyWith(
      topUpInProgress: null == topUpInProgress
          ? _value.topUpInProgress
          : topUpInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      topUpDone: null == topUpDone
          ? _value.topUpDone
          : topUpDone // ignore: cast_nullable_to_non_nullable
              as bool,
      errorInPerformingTopUp: null == errorInPerformingTopUp
          ? _value.errorInPerformingTopUp
          : errorInPerformingTopUp // ignore: cast_nullable_to_non_nullable
              as String,
      topUpAmount: null == topUpAmount
          ? _value.topUpAmount
          : topUpAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpStateImplCopyWith<$Res>
    implements $TopUpStateCopyWith<$Res> {
  factory _$$TopUpStateImplCopyWith(
          _$TopUpStateImpl value, $Res Function(_$TopUpStateImpl) then) =
      __$$TopUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool topUpInProgress,
      bool topUpDone,
      String errorInPerformingTopUp,
      int topUpAmount});
}

/// @nodoc
class __$$TopUpStateImplCopyWithImpl<$Res>
    extends _$TopUpStateCopyWithImpl<$Res, _$TopUpStateImpl>
    implements _$$TopUpStateImplCopyWith<$Res> {
  __$$TopUpStateImplCopyWithImpl(
      _$TopUpStateImpl _value, $Res Function(_$TopUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpInProgress = null,
    Object? topUpDone = null,
    Object? errorInPerformingTopUp = null,
    Object? topUpAmount = null,
  }) {
    return _then(_$TopUpStateImpl(
      topUpInProgress: null == topUpInProgress
          ? _value.topUpInProgress
          : topUpInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      topUpDone: null == topUpDone
          ? _value.topUpDone
          : topUpDone // ignore: cast_nullable_to_non_nullable
              as bool,
      errorInPerformingTopUp: null == errorInPerformingTopUp
          ? _value.errorInPerformingTopUp
          : errorInPerformingTopUp // ignore: cast_nullable_to_non_nullable
              as String,
      topUpAmount: null == topUpAmount
          ? _value.topUpAmount
          : topUpAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TopUpStateImpl implements _TopUpState {
  _$TopUpStateImpl(
      {this.topUpInProgress = false,
      this.topUpDone = false,
      this.errorInPerformingTopUp = '',
      this.topUpAmount = 0});

  @override
  @JsonKey()
  final bool topUpInProgress;
  @override
  @JsonKey()
  final bool topUpDone;
  @override
  @JsonKey()
  final String errorInPerformingTopUp;
  @override
  @JsonKey()
  final int topUpAmount;

  @override
  String toString() {
    return 'TopUpState(topUpInProgress: $topUpInProgress, topUpDone: $topUpDone, errorInPerformingTopUp: $errorInPerformingTopUp, topUpAmount: $topUpAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpStateImpl &&
            (identical(other.topUpInProgress, topUpInProgress) ||
                other.topUpInProgress == topUpInProgress) &&
            (identical(other.topUpDone, topUpDone) ||
                other.topUpDone == topUpDone) &&
            (identical(other.errorInPerformingTopUp, errorInPerformingTopUp) ||
                other.errorInPerformingTopUp == errorInPerformingTopUp) &&
            (identical(other.topUpAmount, topUpAmount) ||
                other.topUpAmount == topUpAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topUpInProgress, topUpDone,
      errorInPerformingTopUp, topUpAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpStateImplCopyWith<_$TopUpStateImpl> get copyWith =>
      __$$TopUpStateImplCopyWithImpl<_$TopUpStateImpl>(this, _$identity);
}

abstract class _TopUpState implements TopUpState {
  factory _TopUpState(
      {final bool topUpInProgress,
      final bool topUpDone,
      final String errorInPerformingTopUp,
      final int topUpAmount}) = _$TopUpStateImpl;

  @override
  bool get topUpInProgress;
  @override
  bool get topUpDone;
  @override
  String get errorInPerformingTopUp;
  @override
  int get topUpAmount;
  @override
  @JsonKey(ignore: true)
  _$$TopUpStateImplCopyWith<_$TopUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
