import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/utils/utils.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/recharge/cubit/top_up_cubit.dart';
import 'package:mobile_recharge/features/recharge/screens/widgets/widgets.dart';

class Recharge extends StatelessWidget {
  const Recharge({
    super.key,
    required this.user,
    required this.beneficiary,
  });

  final User user;
  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TopUpCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recharge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BeneficiaryDetails(beneficiary: beneficiary),
            const SizedBox(
              height: 20,
            ),
            const Text('Select the amount from below dropdown'),
            const SizedBox(
              height: 6,
            ),
            DropdownButtonFormField<int>(
              decoration: dropDownDecoration(),
              hint: const Text('Select the amount'),
              items: Constants.topUpOptions
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text('${value.toString()} AED'),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  cubit.setAmount(value);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RechargeNowButton(cubit: cubit, beneficiary: beneficiary),
          ],
        ),
      ),
    );
  }
}
