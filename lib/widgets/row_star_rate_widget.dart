import 'package:flutter/material.dart';

import '../utils/constant.dart';

class RowStarRateWidget extends StatelessWidget {
   RowStarRateWidget({
     this.content='',
    Key? key,
  }) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: ORANGECOLOR,
        ),
        Text(
          ' 4.9',
          style: TextStyle(color: ORANGECOLOR, fontSize: 12),
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
