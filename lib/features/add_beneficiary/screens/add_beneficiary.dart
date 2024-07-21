import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/utils/utils.dart';
import 'package:mobile_recharge/features/add_beneficiary/cubit/add_beneficiary_cubit.dart';
import 'package:mobile_recharge/features/add_beneficiary/screens/widgets/widgets.dart';

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
                inputFormatters: nicknameInputFormatters,
                validator: nameValidation,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _mobileNumberController,
                keyboardType: TextInputType.number,
                maxLength: 9,
                decoration: const InputDecoration(
                  prefixText: '+971 ',
                  hintText: 'Enter your mobile number',
                  counterText: '',
                ),
                inputFormatters: phoneInputFormatters,
                validator: phoneValidation,
              ),
              const SizedBox(
                height: 20,
              ),
              AddBeneficiaryButton(
                formKey: _formKey,
                nickNameController: _nickNameController,
                mobileNumberController: _mobileNumberController,
                cubit: cubit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
