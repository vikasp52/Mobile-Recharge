import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/core/routing/routing.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: CustomColors.primary,
        label: const Text(
          '+ Add Beneficiarie',
          style: TextStyle(
            color: CustomColors.white,
          ),
        ),
        onPressed: () => RouteGenerator.pushName(
          routeName: RouteGenerator.addBeneficiarieRoute,
        ),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state.gettingUserDataInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.errorInGettingUserData.isNotEmpty) {
            return Center(
              child: Text(state.errorInGettingUserData),
            );
          }

          if (state.user != null) {
            final user = state.user;
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mobile Recharge',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: CustomColors.primary,
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
                          'Account Balance',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.account_balance_wallet,
                              color: CustomColors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '${user!.user?.balance ?? ''} ',
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: CustomColors.white,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'AED',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Beneficiarie List',
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
                        children: user.beneficiaries!.map((item) {
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
                                  item.nickname ?? '',
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
                                  item.mobile ?? '',
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
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
