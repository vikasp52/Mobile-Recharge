// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/services/beneficiary_manager.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

part 'add_beneficiary_state.dart';
part 'add_beneficiary_cubit.freezed.dart';

class AddBeneficiaryCubit extends Cubit<AddBeneficiaryState> {
  AddBeneficiaryCubit() : super(AddBeneficiaryState.initial());

  final beneficiaryManager = BeneficiaryManager();

  Future<void> addBeneficiary(Beneficiary beneficiarie) async {
    emit(
      state.copyWith(
        addingBeneficiarieInProgress: true,
        errorInAddingBeneficiarie: '',
      ),
    );

    try {
      User userData = await beneficiaryManager.loadUserData();
      final beneficiaries = userData.beneficiaries ?? [];

      print('addBeneficiary beneficiaries: $beneficiaries');

      if (beneficiaries.length < 5) {
        try {
          //beneficiaries.add(beneficiarie);

          final user = userData.copyWith(
              beneficiaries: [...?userData.beneficiaries, beneficiarie]);

          print('addBeneficiary beneficiaries updated: $user');

          await beneficiaryManager.saveUserMockData(user);

          emit(
            state.copyWith(
              addingBeneficiarieInProgress: false,
              beneficiarieAdded: true,
            ),
          );
        } on Exception catch (e) {
          print('addBeneficiary beneficiaries error1: $e');

          emit(
            state.copyWith(
              addingBeneficiarieInProgress: false,
              errorInAddingBeneficiarie: 'Something went wrong!',
            ),
          );
        }
      } else {
        emit(
          state.copyWith(
            addingBeneficiarieInProgress: false,
            errorInAddingBeneficiarie: 'You can add only 5 beneficiaries',
          ),
        );
      }
    } on Exception catch (e) {
      print('addBeneficiary beneficiaries error: $e');

      emit(
        state.copyWith(
          addingBeneficiarieInProgress: false,
          errorInAddingBeneficiarie: 'Something went wrong!',
        ),
      );
    }
  }
}