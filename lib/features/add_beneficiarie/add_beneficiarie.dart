import 'package:flutter/material.dart';

class AddBeneficiarie extends StatefulWidget {
  const AddBeneficiarie({super.key});

  @override
  State<AddBeneficiarie> createState() => _AddBeneficiarieState();
}

class _AddBeneficiarieState extends State<AddBeneficiarie> {
  final _nickNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Beneficiarie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nickNameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: 'Enter your nickname',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _mobileNumberController,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: const InputDecoration(
                prefixText: '+971',
                hintText: 'Enter your mobile number',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Recharge now',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
