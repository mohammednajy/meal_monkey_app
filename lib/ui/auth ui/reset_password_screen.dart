import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/utils/constant.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/sub_title_widget.dart';
import 'package:meal_monkey_app/widgets/text_field_widget.dart';
import 'package:meal_monkey_app/widgets/title_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextTitleWidget(titel: 'Reset Password'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: SubTitleWidget(
                bottomHeight: 60,
                content:
                    'Please enter your email to receive a  link to  create a new password via email'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                TextFieldWidget(
                    validator: (value) {
                      return value!.length > 6 ? null : 'invaled';
                    },
                    hintText: 'Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress),
                SizedBox(
                  height: 34,
                ),
                ButtonWidget(
                  buttonWidth: double.infinity,
                  titel: 'Send',
                  titelColor: Colors.white,
                  backgroundColor: ORANGECOLOR,
                  onPressed: () => Navigator.pushNamed(
                    context,
                    ScreenName.codeMobileScreen.toString(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
