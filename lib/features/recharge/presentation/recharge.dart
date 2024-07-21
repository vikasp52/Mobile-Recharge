import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/recharge/cubit/top_up_cubit.dart';

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

    List<int> topUpOptions = [5, 10, 20, 30, 50, 75, 100];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recharge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Beneficiary Details',
                    style: TextStyle(
                      fontSize: 20,
                      color: CustomColors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_box,
                      color: CustomColors.black,
                    ),
                    title: Text(
                      beneficiary.nickname ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        color: CustomColors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.perm_phone_msg,
                      color: CustomColors.black,
                    ),
                    title: Text(
                      beneficiary.mobile ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        color: CustomColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
              items: topUpOptions
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
            BlocConsumer<TopUpCubit, TopUpState>(
              listener: (context, state) {
                if (state.errorInPerformingTopUp.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorInPerformingTopUp),
                    ),
                  );
                }

                if (state.topUpDone) {
                  Navigator.pop(context, true);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Topup done successfully!'),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.topUpInProgress) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      cubit.performTopUp(beneficiary);
                    },
                    child: const Text(
                      'Recharge now',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration dropDownDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: CustomColors.black,
          width: 1,
        ),
      ),
    );
  }
}
