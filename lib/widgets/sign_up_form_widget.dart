import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/user_info.dart';
import 'package:meal_monkey_app/ui/auth%20ui/login_screen.dart';
import 'package:meal_monkey_app/ui/auth%20ui/signup_screen.dart';
import 'package:meal_monkey_app/widgets/text_field_widget.dart';

import '../utils/constant.dart';
import 'button_widget.dart';

class SignUpFormWidget extends StatefulWidget {
  SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();

  UserInfo user = UserInfo();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFieldWidget(
              validator: (value) {
                // return value!.isEmpty ? 'required field' : null;
                if (value!.isEmpty) {
                  return 'required field';
                } else {
                  user.name = value;
                  return null;
                }
              },
              bottomMargin: 15,
              hintText: 'Name',
              obscureText: false,
              keyboardType: TextInputType.text),
          TextFieldWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (!emailRegex.hasMatch(value)) {
                  return 'invalid email';
                }
                user.email = value;

                return null;
              },
              bottomMargin: 15,
              hintText: 'Email',
              obscureText: false,
              keyboardType: TextInputType.emailAddress),
          TextFieldWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (value.length < 6) {
                  return 'must greater than 6';
                }
                user.mobileNo = value;
                return null;
              },
              bottomMargin: 15,
              hintText: 'MobileNo',
              obscureText: false,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true)),
          TextFieldWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else {
                  user.address = value;
                  return null;
                }
              },
              bottomMargin: 15,
              hintText: 'Address',
              obscureText: false,
              keyboardType: TextInputType.text),
          TextFieldWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (value.length < 6) {
                  return 'must greater than 6';
                }

                return null;
              },
              controller: _passwordController,
              bottomMargin: 15,
              hintText: 'Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword),
          TextFieldWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (value != _passwordController.text) {
                  return 'not match';
                }
                user.password = value;

                return null;
              },
              bottomMargin: 15,
              hintText: 'Confirm Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword),
          ButtonWidget(
              buttonWidth: double.infinity,
              titel: 'Sign Up',
              titelColor: Colors.white,
              backgroundColor: ORANGECOLOR,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  users.add(user);
                  SnackBarCustom(
                    context,
                    message: 'Sign Up Successfully',
                    whenComplete: () => Navigator.of(context).pop(context),
                  );
                }
              }),
        ],
      ),
    );
  }



final RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
}