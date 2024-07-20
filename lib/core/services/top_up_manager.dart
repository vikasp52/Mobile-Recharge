import 'package:mobile_recharge/features/home/data/model/user.dart';

class TopUpManager {
  final User user;
  final int maxTotalPopUpPerMonth = 3000;
  final int topUpCharges = 1;

  TopUpManager({required this.user});

  bool canTopUp(Beneficiary beneficiary, int amount) {
    if (user.user == null || beneficiary.totalTopUp == null) return false;
    int maxTopUpBeneficiary = user.user!.isVerified ? 500 : 100;
    return beneficiary.totalTopUp! + amount <= maxTopUpBeneficiary;
  }

  bool canTopUpOverall(int amount) {
    if (user.user == null || user.beneficiaries == null) return false;
    double currentTotal = user.beneficiaries!
        .fold(0, (prev, beneficiary) => prev + beneficiary.totalTopUp!);

    return currentTotal + amount <= maxTotalPopUpPerMonth;
  }

  bool hasSufficientBalance(int amount) {
    if (user.user == null) return false;
    return user.user!.balance >= (amount + topUpCharges);
  }

  bool canPerformTopUp(Beneficiary beneficiary, int amount) {
    if (!canTopUp(beneficiary, amount) ||
        !canPerformTopUp(beneficiary, amount) ||
        !hasSufficientBalance(amount)) {
      return false;
    }

    return true;
  }
}
