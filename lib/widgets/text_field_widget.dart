import 'package:flutter/material.dart';

import '../utils/constant.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    this.bottomMargin = 0,
    this.onSaved,
    this.validator,
    this.controller,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  double bottomMargin;
  final TextInputType keyboardType;
  Function? validator;
  Function? onSaved;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      height: 65,
      child: TextFormField(
        onSaved: onSaved as Function(String?)?,
        controller: controller,
        validator: validator as String? Function(String?)?,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            errorStyle: TextStyle(fontSize: 12, height: 0.3),
            hintStyle: TextStyle(color: Color(0xFFB6B7B7)),
            filled: true,
            fillColor: GREYCOLORBACKGROUND,
            contentPadding: EdgeInsets.symmetric(horizontal: 34, vertical: 25),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
