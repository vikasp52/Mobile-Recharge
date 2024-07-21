import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';
import 'package:mobile_recharge/features/home/presentation/screens/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();

    return Scaffold(
      floatingActionButton: AddBeneficiary(cubit: cubit),
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
                  AccountBalance(user: user),
                  const SizedBox(
                    height: 30,
                  ),
                  BeneficiaryList(
                    user: user!,
                    cubit: cubit,
                    state: state,
                  )
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



