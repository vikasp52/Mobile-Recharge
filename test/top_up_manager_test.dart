import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_recharge/core/services/top_up_manager.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

void main() {
  late TopUpManager topUpManager;
  late User user;
  late Beneficiary beneficiary;

  setUp(() {
    // Mock data setup
    beneficiary = Beneficiary(
      id: '1',
      nickname: 'John',
      mobile: '+971500000000',
      transactions: [
        TopUpTransaction(
            date: DateTime.now().subtract(const Duration(days: 1)),
            amount: 100),
        TopUpTransaction(
            date: DateTime.now().subtract(const Duration(days: 2)),
            amount: 200),
      ],
    );

    user = User(
      user: const UserData(
        id: '1',
        balance: 3000.0,
        isVerified: true,
      ),
      beneficiaries: [beneficiary],
    );

    topUpManager = TopUpManager(user: user);
  });

  test(
      'calculateMonthlyTopUp should return correct top-up amount for the month',
      () {
    final result = topUpManager.calculateMonthlyTopUp(beneficiary);
    expect(result, 300);
  });

  test(
      'calculateMonthlyTopUpForAllBeneficiaries should return correct top-up amount for all beneficiaries',
      () {
    final result = topUpManager.calculateMonthlyTopUpForAllBeneficiaries(0);
    expect(result, 300);
  });

  test(
      'canTopUpPerBeneficiary should return true if the top-up is within the limit',
      () {
    final result = topUpManager.canTopUpPerBeneficiary(beneficiary, 200);
    expect(result, true);
  });

  test(
      'canTopUpPerBeneficiary should return false if the top-up exceeds the limit',
      () {
    final result = topUpManager.canTopUpPerBeneficiary(beneficiary, 400);
    expect(result, false);
  });

  test(
      'canTopUpPerBeneficiary should return true if the top-up is within the limit',
      () {
    final result = topUpManager.canTopUpPerBeneficiary(beneficiary, 200);
    expect(result, true);
  });

  test(
      'canTopUpPerBeneficiary should return false if the top-up exceeds the limit',
      () {
    final result = topUpManager.canTopUpPerBeneficiary(beneficiary, 400);
    expect(result, false);
  });

  test(
      'canTopUpOverall should return true if the total top-up is within the overall limit',
      () {
    final result = topUpManager.canTopUpOverall(beneficiary, 200);
    expect(result, true);
  });

  test(
      'canTopUpOverall should return false if the total top-up exceeds the overall limit',
      () {
    final result = topUpManager.canTopUpOverall(beneficiary, 3000);
    expect(result, false);
  });

  test(
      'hasSufficientBalance should return true if the user has sufficient balance',
      () {
    final result = topUpManager.hasSufficientBalance(200);
    expect(result, true);
  });

  test(
      'hasSufficientBalance should return false if the user does not have sufficient balance',
      () {
    final result = topUpManager.hasSufficientBalance(3000);
    expect(result, false);
  });

  test('canPerformTopUp should return null if all conditions are met', () {
    final result = topUpManager.canPerformTopUp(beneficiary, 200);
    expect(result, null);
  });

  test(
      'canPerformTopUp should return error message if the top-up per beneficiary limit is exceeded',
      () {
    final result = topUpManager.canPerformTopUp(beneficiary, 400);
    expect(result, 'You have reached to maximum top-up limit for this month');
  });

  test(
      'canPerformTopUp should return error message if the overall top-up limit is exceeded',
      () {
    final result = topUpManager.canPerformTopUp(beneficiary, 3000);
    expect(result,
        'You have reached the monthly top-up limit for all beneficiaries');
  });

  test(
      'canPerformTopUp should return error message if the user has insufficient balance',
      () {
    final result = topUpManager.canPerformTopUp(beneficiary, 4000);
    expect(result, 'You have Insufficient Balance');
  });
}
