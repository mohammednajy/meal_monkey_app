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
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter email';
                        } else if (users.isNotEmpty &&
                            value != users[0].email) {
                          return 'Wrong email';
                        }
                        return null;
                      },
                      hintText: 'Your Email',
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: 28,
                  ),
                  TextFieldWidget(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter password';
                        } else if (users.isNotEmpty &&
                            value != users[0].password) {
                          return 'Wrong Password';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        if (_formKey.currentState!.validate() &&
                            users.isNotEmpty) {
                          SnackBarCustom(
                            context,
                            message: 'Login Successfully',
                            whenComplete: () => Navigator.pushReplacementNamed(
                                context, ScreenName.homeScreen.toString()),
                          );
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Text(
                                      'Invalid, May you don\'t have account'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text('Ok'))
                                  ],
                                );
                              });
                        }
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
      ),
    ));
  }
}
