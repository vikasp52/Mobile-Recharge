import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_recharge/core/services/beneficiary_manager.dart';
import 'package:mobile_recharge/core/services/top_up_manager.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/recharge/cubit/top_up_cubit.dart';
import 'package:mobile_recharge/gen/assets.gen.dart';
import 'package:mocktail/mocktail.dart';

// Mock Classes
class MockTopUpManager extends Mock implements TopUpManager {}

class MockBeneficiaryManager extends Mock implements BeneficiaryManager {}

void main() {
  late MockTopUpManager mockTopUpManager;
  late MockBeneficiaryManager mockBeneficiaryManager;
  late TopUpCubit topUpCubit;
  late User user;

  setUp(() {
    mockTopUpManager = MockTopUpManager();
    mockBeneficiaryManager = MockBeneficiaryManager();
    user = User(
      user: const UserData(
        id: '1',
        balance: 3000.0,
        isVerified: true,
      ),
      beneficiaries: [
        Beneficiary(
          id: '1721542780051-265',
          nickname: 'Vikas',
          mobile: '+971577765343',
          transactions: [
            TopUpTransaction(
              date: DateTime.now(),
              amount: 10,
            ),
          ],
        )
      ],
    );
    topUpCubit = TopUpCubit(user)
      ..topUpManager = mockTopUpManager
      ..beneficiaryManager = mockBeneficiaryManager;
  });

  tearDown(() {
    topUpCubit.close();
  });

  test('initial state is TopUpState.initial()', () {
    expect(topUpCubit.state, TopUpState.initial());
  });

  blocTest<TopUpCubit, TopUpState>(
    'emits [topUpAmount: 100] when setAmount is called with 100',
    build: () => topUpCubit,
    act: (cubit) => cubit.setAmount(100),
    expect: () => [
      TopUpState.initial().copyWith(topUpAmount: 100),
    ],
  );

  blocTest<TopUpCubit, TopUpState>(
    'emits [topUpInProgress: true, topUpDone: true] when performTopUp is successful',
    build: () {
      when(() => mockTopUpManager.canPerformTopUp(any(), any()))
          .thenReturn(null);
      when(() => mockBeneficiaryManager.loadUserData())
          .thenAnswer((_) async => user);
      when(() => mockBeneficiaryManager.saveUserMockData(any()))
          .thenAnswer((_) async => File(Assets.mockUser));

      return topUpCubit;
    },
    act: (cubit) {
      cubit.setAmount(100);
      cubit.performTopUp(user.beneficiaries!.first);
    },
    expect: () => [
      TopUpState.initial()
          .copyWith(topUpInProgress: true, errorInPerformingTopUp: ''),
      TopUpState.initial().copyWith(topUpInProgress: false, topUpDone: true),
    ],
  );

  blocTest<TopUpCubit, TopUpState>(
    'emits [topUpInProgress: true, errorInPerformingTopUp: "Error Message"] when performTopUp fails',
    build: () {
      when(() => mockTopUpManager.canPerformTopUp(any(), any()))
          .thenReturn("Error Message");

      return topUpCubit;
    },
    act: (cubit) {
      cubit.setAmount(100);
      cubit.performTopUp(user.beneficiaries!.first);
    },
    expect: () => [
      TopUpState.initial()
          .copyWith(topUpInProgress: true, errorInPerformingTopUp: ''),
      TopUpState.initial().copyWith(
          topUpInProgress: false, errorInPerformingTopUp: "Error Message"),
    ],
  );
}
