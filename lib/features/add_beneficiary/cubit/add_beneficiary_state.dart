part of 'add_beneficiary_cubit.dart';

@freezed
abstract class AddBeneficiaryState with _$AddBeneficiaryState {
  factory AddBeneficiaryState({
    @Default(false) bool addingBeneficiarieInProgress,
    @Default(false) bool beneficiarieAdded,
    @Default('') String errorInAddingBeneficiarie,
  }) = _AddBeneficiaryState;

  factory AddBeneficiaryState.initial() => AddBeneficiaryState();
}
