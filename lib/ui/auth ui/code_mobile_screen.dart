import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/ritch_text_widget.dart';
import 'package:meal_monkey_app/widgets/sub_title_widget.dart';
import 'package:meal_monkey_app/widgets/title_widget.dart';

import '../../utils/constant.dart';
import '../../widgets/otp_widget.dart';

class CodeMobileScreen extends StatelessWidget {
  const CodeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextTitleWidget(titel: 'We have sent an OTP to your Mobile'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SubTitleWidget(
                bottomHeight: 54,
                content:
                    'Please check your mobile number 071*****12  continue to reset your password'),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  Row(
                    children: [
                      OTPWidget(),
                      OTPWidget(),
                      OTPWidget(),
                      OTPWidget(rightPadding: 0),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ButtonWidget(
                    buttonWidth: double.infinity,
                    titel: 'Next',
                    titelColor: Colors.white,
                    backgroundColor: ORANGECOLOR,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      ScreenName.newPasswordScreen.toString(),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  RichTextWidget(
                      richText: ' Click Here',
                      titel: 'Didn\'t Receive?',
                      onPressed: () => Navigator.pop(context))
                ],
              ))
        ],
      ),
    );
  }
}
