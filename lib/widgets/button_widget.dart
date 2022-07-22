import 'package:flutter/material.dart';

import '../utils/constant.dart';


class ButtonWidget extends StatelessWidget {
   ButtonWidget({
    this.buttonWidth = 307,
    required this.titel,
    required this.titelColor,
    required this.backgroundColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
final String titel;
final Color titelColor;
final Color backgroundColor;
double buttonWidth;
VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        titel,
        style: TextStyle(fontSize: 20,color: titelColor),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: ORANGECOLOR),
              borderRadius: BorderRadius.circular(30)),
          minimumSize: Size(buttonWidth, 56),
          primary: backgroundColor),
    );
  }
}
