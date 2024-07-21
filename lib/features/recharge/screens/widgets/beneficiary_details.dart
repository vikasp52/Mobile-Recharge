import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';


class BeneficiaryDetails extends StatelessWidget {
  const BeneficiaryDetails({
    super.key,
    required this.beneficiary,
  });

  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
