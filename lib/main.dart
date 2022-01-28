// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/screens/launch_screen.dart';
import 'package:trateel_mobile/screens/onboarding_screens/onboarding_screen.dart';

void main() => runApp(const Trateel());

class Trateel extends StatelessWidget {
  const Trateel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/onboarding_screen': (context) => OnBoardingScreen(),
      },
    );
  }
}
