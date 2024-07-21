// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      beneficiaries: (json['beneficiaries'] as List<dynamic>?)
          ?.map((e) => Beneficiary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user);
  writeNotNull('beneficiaries', instance.beneficiaries);
  return val;
}

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: json['id'] as String,
      balance: (json['balance'] as num).toDouble(),
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'isVerified': instance.isVerified,
    };

_$BeneficiaryImpl _$$BeneficiaryImplFromJson(Map<String, dynamic> json) =>
    _$BeneficiaryImpl(
      id: json['id'] as String?,
      nickname: json['nickname'] as String?,
      mobile: json['mobile'] as String?,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TopUpTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BeneficiaryImplToJson(_$BeneficiaryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('mobile', instance.mobile);
  val['transactions'] = instance.transactions;
  return val;
}

_$TopUpTransactionImpl _$$TopUpTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpTransactionImpl(
      date: DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$TopUpTransactionImplToJson(
        _$TopUpTransactionImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
    };
