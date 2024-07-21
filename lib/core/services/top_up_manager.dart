import 'package:mobile_recharge/features/home/data/model/user.dart';

class TopUpManager {
  final User user;
  final int maxTotalPopUpPerMonth = 3000;
  final int topUpCharges = 1;

  TopUpManager({required this.user});

  DateTime now = DateTime.now();

  // This method is used to calculate the total top-up done by the
  // user till date.
  int calculateMonthlyTopUp(Beneficiary beneficiary) {
    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);

    return beneficiary.transactions
        .where(
          (transaction) => transaction.date.isAfter(firstDayOfMonth),
        )
        .fold(0, (total, transaction) => total + transaction.amount);
  }

  int calculateMonthlyTopUpForAllBeneficiaries(int amount) {
    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);

    // Ensure we handle the case where beneficiaries might be null
    if (user.beneficiaries == null) {
      return 0;
    }

    int totalTopUp = 0;

    // Loop through each beneficiary
    for (var beneficiary in user.beneficiaries!) {
      // Calculate the total top-up for this beneficiary for the current month
      int beneficiaryTopUp = beneficiary.transactions
          .where((transaction) => transaction.date.isAfter(firstDayOfMonth))
          .fold(0, (subtotal, transaction) {
        return subtotal + transaction.amount;
      });

      // Add the beneficiary's top-up to the total
      totalTopUp += beneficiaryTopUp;
    }

    return totalTopUp;
  }

  // User can top up a maximum of AED 500 OR AED 1,000 per calendar
  // month per beneficiary based on varification status
  bool canTopUpPerBeneficiary(Beneficiary beneficiary, int amount) {
    final monthlyTopUp = calculateMonthlyTopUp(beneficiary);

    if (user.user == null) return false;
    int maxTopUpBeneficiary = user.user!.isVerified ? 500 : 1000;
    return monthlyTopUp + amount <= maxTopUpBeneficiary;
  }

  // User can top up multiple beneficiaries but is limited to a total of
  // AED 3,000 per month for all beneficiaries.
  bool canTopUpOverall(Beneficiary beneficiary, int amount) {
    final monthlyTopUp = calculateMonthlyTopUpForAllBeneficiaries(amount);

    return monthlyTopUp + amount <= maxTotalPopUpPerMonth;
  }

  bool hasSufficientBalance(int amount) {
    if (user.user == null) return false;
    return user.user!.balance >= (amount + topUpCharges);
  }

  String? canPerformTopUp(Beneficiary beneficiary, int amount) {
    if (!canTopUpPerBeneficiary(beneficiary, amount)) {
      return 'You have reached to maximum top-up limit for this month';
    } else if (!canTopUpOverall(beneficiary, amount)) {
      return 'You have reached the monthly top-up limit for all beneficiaries';
    } else if (!hasSufficientBalance(amount)) {
      return 'You have Insufficient Balance';
    } else {
      return null;
    }
  }
}
