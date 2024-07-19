import 'package:flutter/material.dart';
import 'package:mobile_recharge/features/add_beneficiarie/add_beneficiarie.dart';

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
        screen = const AddBeneficiarie();
        break;

      case rechargeRoute:
        screen = const AddBeneficiarie();
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
