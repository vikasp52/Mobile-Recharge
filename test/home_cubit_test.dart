import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/home/data/repository/user_repository.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';
import 'package:mocktail/mocktail.dart';

// Mock Classes
class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockUserRepository mockUserRepository;
  late UserCubit userCubit;
  late User user;

  setUp(() {
    mockUserRepository = MockUserRepository();
    userCubit = UserCubit(mockUserRepository);
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
  });

  tearDown(() {
    userCubit.close();
  });

  test(
    'Cubit should have initial state as [UserState.initial()]',
    () => expect(
      userCubit.state,
      UserState.initial(),
    ),
  );

  blocTest<UserCubit, UserState>(
    'Should emit [gettingUserDataInProgress: true, user: user] on successful request',
    build: () {
      when(() => mockUserRepository.getUserData())
          .thenAnswer((_) async => Right(user));
      return userCubit;
    },
    act: (UserCubit cubit) => cubit.getUserDetails(),
    wait: const Duration(
        milliseconds:
            100), // Add a short delay to ensure state updates are processed
    expect: () => [
      UserState.initial().copyWith(
        gettingUserDataInProgress: true,
        errorInGettingUserData: '',
      ),
      UserState.initial().copyWith(
        gettingUserDataInProgress: false,
        user: user,
        errorInGettingUserData: '',
      ),
    ],
    verify: (_) {
      verify(() => mockUserRepository.getUserData()).called(1);
    },
  );

  blocTest<UserCubit, UserState>(
    'Should emit [gettingUserDataInProgress: true, errorInGettingUserData: "error"] on failure',
    build: () {
      when(() => mockUserRepository.getUserData())
          .thenAnswer((_) async => const Left('error'));
      return userCubit;
    },
    act: (UserCubit cubit) => cubit.getUserDetails(),
    wait: const Duration(
        milliseconds:
            100), // Add a short delay to ensure state updates are processed
    expect: () => [
      UserState.initial().copyWith(
        gettingUserDataInProgress: true,
        errorInGettingUserData: '',
      ),
      UserState.initial().copyWith(
        gettingUserDataInProgress: false,
        errorInGettingUserData: 'error',
      ),
    ],
    verify: (_) {
      verify(() => mockUserRepository.getUserData()).called(1);
    },
  );
}
