import 'package:flutter/material.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/sub_title_widget.dart';
import 'package:meal_monkey_app/widgets/text_field_widget.dart';
import 'package:meal_monkey_app/widgets/title_widget.dart';

import '../../utils/constant.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextTitleWidget(titel: 'New Password'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: SubTitleWidget(
                bottomHeight: 39,
                content:
                    'Please enter your email to receive a  link to  create a new password via email'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                TextFieldWidget(
                    hintText: 'New Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword),
                SizedBox(
                  height: 28,
                ),
                TextFieldWidget(
                    hintText: 'Confirm Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword),
                SizedBox(
                  height: 28,
                ),
                ButtonWidget(
                    buttonWidth: double.infinity,
                    titel: 'Next',
                    titelColor: Colors.white,
                    backgroundColor: ORANGECOLOR,
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
