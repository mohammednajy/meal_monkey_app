import 'package:flutter/material.dart';

import '../utils/constant.dart';

class BesideRateStarWidget extends StatelessWidget {
  BesideRateStarWidget({
    this.leftContent = '',
    this.rightPadding = 0,
    Key? key,
  }) : super(key: key);
  String leftContent;
  double rightPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: Row(
        children: [
          Text(
            leftContent,
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            ' . ',
            style: TextStyle(
                color: ORANGECOLOR, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Text(
            ' Western Food',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
