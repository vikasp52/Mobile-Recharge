import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/recharge/cubit/top_up_cubit.dart';

class RechargeNowButton extends StatelessWidget {
  const RechargeNowButton({
    super.key,
    required this.cubit,
    required this.beneficiary,
  });

  final TopUpCubit cubit;
  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TopUpCubit, TopUpState>(
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
              'Recharge Now',
            ),
          ),
        );
      },
    );
  }
}
