import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class RichTextWidget extends StatelessWidget {
   RichTextWidget({
    required this.richText,
    required this.titel,
    required this.onPressed,
    super.key});
final String titel;
final String richText;
VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: titel,
        style: Theme.of(context).textTheme.bodyText1,
        children: [
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = onPressed,
              text: richText,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
