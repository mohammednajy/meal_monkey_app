import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/user_info.dart';
import 'package:meal_monkey_app/widgets/text_field_widget.dart';

import '../utils/constant.dart';
import 'button_widget.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({
    Key? key,
  }) : super(key: key);

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
              onSaved: (value) {
                user.name = value;
              },
              validator: (value) {
                return value!.isEmpty ? 'required field' : null;
              },
              bottomMargin: 15,
              hintText: 'Name',
              obscureText: false,
              keyboardType: TextInputType.text),
          TextFieldWidget(
              onSaved: (value) {
                user.email = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (!emailRegex.hasMatch(value)) {
                  return 'invalid email';
                }
                return null;
              },
              bottomMargin: 15,
              hintText: 'Email',
              obscureText: false,
              keyboardType: TextInputType.emailAddress),
          TextFieldWidget(
              onSaved: (value) {
                user.mobileNo = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (value.length < 6) {
                  return 'must greater than 6';
                }
                return null;
              },
              bottomMargin: 15,
              hintText: 'MobileNo',
              obscureText: false,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true)),
          TextFieldWidget(
              onSaved: (value) {
                user.address = value;
              },
              validator: (value) {
                return value!.isEmpty ? 'required field' : null;
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
              onSaved: (value) {
                user.password = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required field';
                } else if (value != _passwordController.text) {
                  return 'not match';
                }
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
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                        const SnackBar(
                          content: Text('Sign Up Succsfully',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15)),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 1),
                        ),
                      )
                      .closed
                      .whenComplete(() => Navigator.pop(context,user));
                }
              }),
        ],
      ),
    );
  }
}

final RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
