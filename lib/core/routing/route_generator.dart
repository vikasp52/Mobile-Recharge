import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/features/add_beneficiary/add_beneficiary.dart';
import 'package:mobile_recharge/features/add_beneficiary/cubit/add_beneficiary_cubit.dart';
import 'package:mobile_recharge/features/home/data/model/user.dart';
import 'package:mobile_recharge/features/recharge/cubit/top_up_cubit.dart';
import 'package:mobile_recharge/features/recharge/presentation/recharge.dart';

class RouteGenerator {
  static const String addBeneficiarieRoute = '/AddBeneficiarieScreen';
  static const String rechargeRoute = '/MobileRechargeScreen';

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic>? pushName<Argument>(
      {required String routeName, Argument? argument}) {
    return navigatorKey.currentState?.pushNamed(
      routeName,
      arguments: argument,
    );
  }

  static Future<dynamic>? pushReplacement<Argument>(
      {required String routeName, Argument? argument}) {
    return navigatorKey.currentState?.pushReplacementNamed(
      routeName,
      arguments: argument,
    );
  }

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    late Widget screen;

    switch (routeSettings.name) {
      case addBeneficiarieRoute:
        screen = BlocProvider(
          create: (context) => AddBeneficiaryCubit(),
          child: const AddBeneficiary(),
        );
        break;

      case rechargeRoute:
        final data = routeSettings.arguments as Map<String, Object>;
        final user = data['user'] as User;
        final beneficiary = data['beneficiary'] as Beneficiary;

        screen = BlocProvider(
          create: (context) => TopUpCubit(
            user,
          ),
          child: Recharge(
            user: user,
            beneficiary: beneficiary,
          ),
        );
        break;

      default:
        screen = const Scaffold(
          body: Center(
            child: Text(
              'Invalid Route',
            ),
          ),
        );
    }

    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }
}
