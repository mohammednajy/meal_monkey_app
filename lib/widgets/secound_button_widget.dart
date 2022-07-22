import 'package:flutter/material.dart';

import '../utils/constant.dart';

class SecoundButtonWidget extends StatelessWidget {
  SecoundButtonWidget({
    this.buttonWidth = 307,
    required this.backgroundColor,
    required this.buttonTitel,
    required this.logoPath,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String logoPath;
  final String buttonTitel;
  final Color backgroundColor;
  double buttonWidth;
  VoidCallback onPressed;

  //'${path}facebook-letter-logo.png'
  //'Login with Google'
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(logoPath),
        SizedBox(
          width: 32,
        ),
        Text(
          buttonTitel,
          style: TextStyle(fontSize: 15),
        )
      ]),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide.none, borderRadius: BorderRadius.circular(30)),
          minimumSize: Size(buttonWidth, 56),
          primary: backgroundColor),
    );
  }
}
