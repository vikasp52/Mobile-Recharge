
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/utils/utils.dart';
import 'package:mobile_recharge/features/add_beneficiary/cubit/add_beneficiary_cubit.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

class AddBeneficiaryButton extends StatelessWidget {
  const AddBeneficiaryButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nickNameController,
    required TextEditingController mobileNumberController,
    required this.cubit,
  })  : _formKey = formKey,
        _nickNameController = nickNameController,
        _mobileNumberController = mobileNumberController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nickNameController;
  final TextEditingController _mobileNumberController;
  final AddBeneficiaryCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: BlocConsumer<AddBeneficiaryCubit, AddBeneficiaryState>(
        listener: (context, state) {
          if (state.errorInAddingBeneficiarie.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorInAddingBeneficiarie),
              ),
            );
          }

          if (state.beneficiarieAdded) {
            Navigator.pop(context, true);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Beneficiarie added!'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.addingBeneficiarieInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ElevatedButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              final isValid = _formKey.currentState?.validate();
              if (isValid != null && !isValid) {
                return;
              } else {
                _formKey.currentState!.save();
                final beneficiarie = Beneficiary(
                  id: generateId(),
                  nickname: _nickNameController.text,
                  mobile: '+971${_mobileNumberController.text}',
                  transactions: [],
                );
                cubit.addBeneficiary(beneficiarie);
              }
            },
            child: const Text(
              'Add Beneficiary',
            ),
          );
        },
      ),
    );
  }
}
