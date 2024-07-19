import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/core/di/injection_container.dart';
import 'package:mobile_recharge/core/routing/routing.dart';
import 'package:mobile_recharge/features/home/data/repository/user_repository.dart';
import 'package:mobile_recharge/features/home/presentation/cubit/user_cubit.dart';
import 'package:mobile_recharge/features/home/presentation/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          title: 'Mobile Recharge',
          theme: lightTheme,
          onGenerateRoute: RouteGenerator.generateRoute,
          navigatorKey: RouteGenerator.navigatorKey,
          debugShowCheckedModeBanner: false,
          home: BlocProvider(
            create: (context) => UserCubit(
              serviceLocator<UserRepository>(),
            ),
            child: const HomePage(),
          )),
    );
  }
}
