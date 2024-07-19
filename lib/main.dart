import 'package:flutter/material.dart';
import 'package:mobile_recharge/core/assets/assets.dart';
import 'package:mobile_recharge/features/home/presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Recharge',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
