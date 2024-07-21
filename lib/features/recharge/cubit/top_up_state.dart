part of 'top_up_cubit.dart';

@freezed
abstract class TopUpState with _$TopUpState {
  factory TopUpState({
    @Default(false) bool topUpInProgress,
    @Default(false) bool topUpDone,
    @Default('') String errorInPerformingTopUp,
    @Default(0) int topUpAmount,
  }) = _TopUpState;

  factory TopUpState.initial() => TopUpState();
}
