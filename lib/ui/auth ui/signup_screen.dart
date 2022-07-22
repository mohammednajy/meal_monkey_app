import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/utils/constant.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/ritch_text_widget.dart';
import 'package:meal_monkey_app/widgets/sub_title_widget.dart';
import 'package:meal_monkey_app/widgets/title_widget.dart';

import '../../widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextTitleWidget(titel: 'Sign Up'),
              SubTitleWidget(
                content: 'Add your details to sign up',
                bottomHeight: 20,
              ),
              SignUpFormWidget(),
              SizedBox(
                height: 20,
              ),
              RichTextWidget(
                  richText: ' Login',
                  titel: 'Already have an Account?',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ScreenName.loginScreen.toString());
                  }),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
