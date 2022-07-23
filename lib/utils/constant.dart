import 'package:flutter/material.dart';

String path = 'assets/images/';

Color GREYCOLOR = Color(0xFF7C7D7E);
Color GREYCOLORHEDLINE = Color(0xFF4A4B4D);
Color ORANGECOLOR = Color(0xFFFC6011);
Color GREYCOLORBACKGROUND = Color(0xFFF2F2F2);
Color GREYCOLORBACKGROUNDSECOUND = Color(0xFFD6D6D6);

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
        bodyText1:
            TextStyle(color: GREYCOLOR, fontSize: 15, fontFamily: 'Metropolis'),
        bodyText2: TextStyle(
            fontFamily: 'Metropolis', fontSize: 30, color: GREYCOLORHEDLINE)));

Future<SnackBarClosedReason> SnackBarCustom(BuildContext context,
    {required String message, required Function whenComplete}) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Text(message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
        ),
      )
      .closed
      .whenComplete(whenComplete as Function());
}
