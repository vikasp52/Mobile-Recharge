import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/utils/utils.dart';
import 'package:mobile_recharge/features/add_beneficiary/cubit/add_beneficiary_cubit.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

class AddBeneficiary extends StatefulWidget {
  const AddBeneficiary({super.key});

  @override
  State<AddBeneficiary> createState() => _AddBeneficiaryState();
}

class _AddBeneficiaryState extends State<AddBeneficiary> {
  final _nickNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nickNameController.dispose();
    _mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddBeneficiaryCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Beneficiary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nickNameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  hintText: 'Enter your nickname',
                  counterText: '',
                ),
                validator: nameValidation,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _mobileNumberController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: const InputDecoration(
                  prefixText: '+971',
                  hintText: 'Enter your mobile number',
                  counterText: '',
                ),
                validator: phoneValidation,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
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
                              nickname: _nickNameController.text,
                              mobile: _mobileNumberController.text,
                              totalTopUp: 0);
                          cubit.addBeneficiary(beneficiarie);
                        }
                      },
                      child: const Text(
                        'Add Beneficiary',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
