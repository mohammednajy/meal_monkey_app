import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';

import '../../utils/constant.dart';
import '../../widgets/button_widget.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            '${path}logo_and_background.png',
            width: double.infinity,
            height: 500,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                ButtonWidget(
                  buttonWidth: double.infinity,
                  titel: 'Login',
                  titelColor: Colors.white,
                  backgroundColor: ORANGECOLOR,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ScreenName.loginScreen.toString());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  buttonWidth: double.infinity,
                  titel: 'Create an Account',
                  titelColor: ORANGECOLOR,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ScreenName.signUpScreen.toString());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
