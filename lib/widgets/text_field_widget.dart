import 'package:flutter/material.dart';

import '../utils/constant.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    this.bottomMargin = 0,
    this.prefixIcon,
    this.onSaved,
    this.height = 65,
    this.vertical = 25,
    this.validator,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  double bottomMargin;
  final TextInputType keyboardType;
  Function? validator;
  Function? onSaved;
  TextEditingController? controller;
  AutovalidateMode? autovalidateMode;
  Widget? prefixIcon;
  double height;
  double vertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      height: height,
      child: TextFormField(
        onSaved: onSaved as Function(String?)?,
        controller: controller,
        validator: validator as String? Function(String?)?,
        keyboardType: keyboardType,
        autovalidateMode: autovalidateMode,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            errorStyle: TextStyle(fontSize: 12, height: 0.3),
            hintStyle: TextStyle(color: Color(0xFFB6B7B7)),
            filled: true,
            fillColor: GREYCOLORBACKGROUND,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 34, vertical: vertical),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
