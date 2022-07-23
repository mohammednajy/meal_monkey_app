import 'package:flutter/material.dart';
import 'package:meal_monkey_app/ui/app%20ui/home_screen.dart';


import 'package:meal_monkey_app/utils/constant.dart';

import 'ui/app ui/on_boarding_screen.dart';
import 'ui/app ui/splash_screen.dart';
import 'ui/auth ui/code_mobile_screen.dart';
import 'ui/auth ui/login_register_screen.dart';
import 'ui/auth ui/login_screen.dart';
import 'ui/auth ui/new_password_screen.dart';
import 'ui/auth ui/reset_password_screen.dart';
import 'ui/auth ui/signup_screen.dart';



void main(List<String> args) {
  runApp(const MealMonkeyApp());
}

enum ScreenName {
  splashScreen,
  loginRegisterScreen,
  loginScreen,
  signUpScreen,
  resetPasswordScreen,
  codeMobileScreen,
  newPasswordScreen,
  onBoardingScreen,
  homeScreen
}

class MealMonkeyApp extends StatelessWidget {
  const MealMonkeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenName.splashScreen.toString(),
      routes: {
        ScreenName.splashScreen.toString(): (context) => const SplashScreen(),
        ScreenName.loginRegisterScreen.toString(): (contex) =>
            const LoginRegisterScreen(),
        ScreenName.loginScreen.toString(): (contex) =>  LoginScreen(),
        ScreenName.signUpScreen.toString(): (contex) => const SignUpScreen(),
        ScreenName.resetPasswordScreen.toString(): (contex) =>
            const ResetPasswordScreen(),
        ScreenName.codeMobileScreen.toString(): (contex) =>
            const CodeMobileScreen(),
        ScreenName.newPasswordScreen.toString(): (contex) =>
            const NewPasswordScreen(),
        ScreenName.onBoardingScreen.toString(): (contex) => OnBoardingScreen(),
        ScreenName.homeScreen.toString(): (contex) => HomeScreen(),

      },
    );
  }
}
