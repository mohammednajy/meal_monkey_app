import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/utils/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, ScreenName.onBoardingScreen.toString());
    });
    return Scaffold(
      body: Image.asset(
        '${path}splash_screen.png',
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
    );
  }
}
