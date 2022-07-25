import 'package:flutter/material.dart';

String path = 'assets/images/';

Color GREYCOLOR = Color(0xFF7C7D7E);
Color GREYCOLORHEDLINE = Color(0xFF4A4B4D);
Color ORANGECOLOR = Color(0xFFFC6011);
Color GREYCOLORBACKGROUND = Color(0xFFF2F2F2);
Color GREYCOLORBACKGROUNDSECOUND = Color(0xFFD6D6D6);
Color GREYLIGHT = Color(0xFFB6B7B7);

ThemeData themeData = ThemeData(
    fontFamily: 'Metropolis',
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
    textTheme: TextTheme(
        headline3: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        headline1: TextStyle(
            color: GREYCOLORHEDLINE, fontSize: 20, fontWeight: FontWeight.w500),
        headline2: TextStyle(
            fontSize: 12, color: GREYLIGHT, fontWeight: FontWeight.w500),
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
