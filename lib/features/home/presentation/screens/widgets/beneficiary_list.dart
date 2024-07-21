import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/core/routing/routing.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';

class BeneficiaryList extends StatelessWidget {
  const BeneficiaryList({
    super.key,
    required this.user,
    required this.cubit,
    required this.state,
  });

  final User user;
  final UserCubit cubit;
  final UserState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Beneficiary List',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: CustomColors.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        if (state.user!.beneficiaries != null &&
            state.user!.beneficiaries!.isEmpty)
          const Center(
            child: Text(
              'No beneficiarie added',
              style: TextStyle(
                color: CustomColors.black,
              ),
            ),
          )
        else
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: user.beneficiaries!.map((beneficiary) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: const BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        beneficiary.nickname ?? '',
                        style: const TextStyle(
                          color: CustomColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        beneficiary.mobile ?? '',
                        style: const TextStyle(
                          color: CustomColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () => RouteGenerator.pushName(
                          routeName: RouteGenerator.rechargeRoute,
                          argument: {
                            'user': user,
                            'beneficiary': beneficiary,
                          },
                        )?.then(
                          (value) {
                            if (value != null && value) {
                              cubit.getUserDetails();
                            }
                          },
                        ),
                        child: const Text(
                          'Recharge now',
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
