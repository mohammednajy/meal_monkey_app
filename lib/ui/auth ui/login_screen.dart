
import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/models/user_info.dart';
import 'package:meal_monkey_app/utils/constant.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/secound_button_widget.dart';

import '../../widgets/ritch_text_widget.dart';
import '../../widgets/sub_title_widget.dart';
import '../../widgets/text_field_widget.dart';
import '../../widgets/title_widget.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({this.user, super.key});
UserInfo? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TextTitleWidget(
            titel: 'Login',
          ),
          SubTitleWidget(content: 'Add your details to login'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                TextFieldWidget(
                    validator: (value) {
                      return value == 'moh' ? null : 'invaled';
                    },
                    hintText: 'Your Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress),
                SizedBox(
                  height: 28,
                ),
                TextFieldWidget(
                    hintText: 'Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword),
                SizedBox(
                  height: 28,
                ),
                ButtonWidget(
                    buttonWidth: double.infinity,
                    titel: 'Login',
                    titelColor: Colors.white,
                    backgroundColor: ORANGECOLOR,
                    onPressed: () {
                      print(user);
                    }),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ScreenName.resetPasswordScreen.toString()),
                  child: Text(
                    'Forgot your password?',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: 49,
                ),
                Text(
                  'or Login With',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 27,
                ),
                SecoundButtonWidget(
                    buttonWidth: double.infinity,
                    buttonTitel: 'Login with Facebook',
                    logoPath: '${path}facebook-letter-logo.png',
                    backgroundColor: Colors.blue,
                    onPressed: () {}),
                SizedBox(
                  height: 28,
                ),
                SecoundButtonWidget(
                    buttonWidth: double.infinity,
                    buttonTitel: 'Login with Google',
                    logoPath: '${path}google-plus-logo.png',
                    backgroundColor: Color(0xFFDD4B39),
                    onPressed: () {}),
                SizedBox(
                  height: 60,
                ),
                RichTextWidget(
                  titel: 'Don\'t have an Account?',
                  richText: ' Sign Up',
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
    ));
  }
}
