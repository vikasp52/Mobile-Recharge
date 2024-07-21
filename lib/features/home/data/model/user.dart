// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(includeIfNull: false)
  const factory User({
    @JsonKey(name: 'user') required UserData? user,
    required List<Beneficiary>? beneficiaries,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class UserData with _$UserData {
  @JsonSerializable(includeIfNull: false)
  const factory UserData({
    required String id,
    required double balance,
    required bool isVerified,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
class Beneficiary with _$Beneficiary {
  @JsonSerializable(includeIfNull: false)
  const factory Beneficiary({
    String? id,
    required String? nickname,
    required String? mobile,
    required List<TopUpTransaction> transactions,
  }) = _Beneficiary;

  factory Beneficiary.fromJson(Map<String, Object?> json) =>
      _$BeneficiaryFromJson(json);
}

@freezed
class TopUpTransaction with _$TopUpTransaction {
  @JsonSerializable(includeIfNull: false)
  const factory TopUpTransaction({
    required DateTime date,
    required int amount,
  }) = _TopUpTransaction;

  factory TopUpTransaction.fromJson(Map<String, Object?> json) =>
      _$TopUpTransactionFromJson(json);
}
