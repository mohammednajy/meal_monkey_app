import 'package:flutter/material.dart';

class TextTitleWidget extends StatelessWidget {
  TextTitleWidget({
    required this.titel,
    this.topPadding = 60,
    this.bottomPadding = 12,
    Key? key,
  }) : super(key: key);
  final String titel;
  double topPadding;
  double bottomPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        titel,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
