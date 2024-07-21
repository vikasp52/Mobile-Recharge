import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/core/routing/routing.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';

class AddBeneficiary extends StatelessWidget {
  const AddBeneficiary({
    super.key,
    required this.cubit,
  });

  final UserCubit cubit;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: CustomColors.primary,
      label: const Text(
        '+ Add Beneficiary',
        style: TextStyle(
          color: CustomColors.white,
        ),
      ),
      onPressed: () => RouteGenerator.pushName(
        routeName: RouteGenerator.addBeneficiarieRoute,
      )?.then(
        (value) {
          if (value) cubit.getUserDetails();
        },
      ),
    );
  }
}
