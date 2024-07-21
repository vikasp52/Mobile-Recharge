
import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({
    super.key,
    required this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}