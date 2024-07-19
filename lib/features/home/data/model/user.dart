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
    required List<Beneficiaries>? beneficiaries,
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
class Beneficiaries with _$Beneficiaries {
  @JsonSerializable(includeIfNull: false)
  const factory Beneficiaries({
    required String? id,
    required String? nickname,
    required String? mobile,
    required int? totalTopUp,
  }) = _Beneficiaries;

  factory Beneficiaries.fromJson(Map<String, Object?> json) =>
      _$BeneficiariesFromJson(json);
}
