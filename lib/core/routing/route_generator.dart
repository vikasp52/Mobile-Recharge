import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/di/injection_container.dart';
import 'package:mobile_recharge/features/add_beneficiarie/add_beneficiarie.dart';
import 'package:mobile_recharge/features/home/data/repository/user_repository.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';
import 'package:mobile_recharge/features/recharge/recharge.dart';

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
          create: (context) => UserCubit(
            serviceLocator<UserRepository>(),
          ),
          child: const AddBeneficiarie(),
        );
        break;

      case rechargeRoute:
        screen = const Recharge();
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
