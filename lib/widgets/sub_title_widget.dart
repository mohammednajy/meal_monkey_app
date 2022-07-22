import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  SubTitleWidget({
    required this.content,
    this.bottomHeight = 30,
    Key? key,
  }) : super(key: key);
  final String content;
  double bottomHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomHeight),
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
