import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/core/routing/routing.dart';

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
      body: Padding(
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
                        text: const TextSpan(
                          text: '5000 ',
                          style: TextStyle(
                            fontSize: 28,
                            color: CustomColors.white,
                          ),
                          children: <TextSpan>[
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
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [1, 2, 3, 4, 5].map((item) {
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
                        const Text(
                          'Vikas Pandey',
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '+971578898907',
                          style: TextStyle(
                            color: CustomColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
      ),
    );
  }
}
