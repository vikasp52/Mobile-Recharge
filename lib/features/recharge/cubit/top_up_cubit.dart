// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/services/beneficiary_manager.dart';
import 'package:mobile_recharge/core/services/top_up_manager.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

part 'top_up_state.dart';
part 'top_up_cubit.freezed.dart';

class TopUpCubit extends Cubit<TopUpState> {
  TopUpCubit(User user)
      : topUpManager = TopUpManager(user: user),
        super(TopUpState.initial());

  TopUpManager topUpManager;
  BeneficiaryManager beneficiaryManager = BeneficiaryManager();

  void setAmount(int amount) {
    emit(state.copyWith(topUpAmount: amount));
  }

  Future<void> performTopUp(
    Beneficiary beneficiary,
  ) async {
    emit(
      state.copyWith(
        topUpInProgress: true,
        errorInPerformingTopUp: '',
      ),
    );

    final canPerformTopUp = topUpManager.canPerformTopUp(
      beneficiary,
      state.topUpAmount,
    );

    print('canPerformTopUp is: $canPerformTopUp');

    if (canPerformTopUp == null) {
      User userData = await beneficiaryManager.loadUserData();
      final beneficiaries = userData.beneficiaries!;

      User? updatedUser;

      // Update the user's balance
      final updatedUserBalance = userData.user!.balance -
          (state.topUpAmount + topUpManager.topUpCharges);

      for (var beneficiaryData in beneficiaries) {
        if (beneficiaryData.id == beneficiary.id) {
          final newTopUpTransaction = TopUpTransaction(
            date: DateTime.now(),
            amount: state.topUpAmount,
          );

          // Update the beneficiary's topUp transactions
          final updatedBeneficiary = beneficiaryData.copyWith(
            transactions: [...beneficiary.transactions, newTopUpTransaction],
          );

          // Update the list of beneficiaries
          final updatedBeneficiaries = beneficiaries
              .map(
                (b) => b.id == beneficiary.id ? updatedBeneficiary : b,
              )
              .toList();

          // Create the updated user object
          updatedUser = userData.copyWith(
            user: userData.user!.copyWith(
              balance: updatedUserBalance,
            ),
            beneficiaries: updatedBeneficiaries,
          );

          print('updatedUser: $updatedUser');
        }
      }

      beneficiaryManager.saveUserMockData(updatedUser!);

      emit(
        state.copyWith(
          topUpInProgress: false,
          topUpDone: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          topUpInProgress: false,
          errorInPerformingTopUp: canPerformTopUp,
        ),
      );
    }
  }
}
