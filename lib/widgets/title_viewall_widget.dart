import 'package:flutter/material.dart';

import '../utils/constant.dart';

class TitleViewallWidget extends StatelessWidget {
  const TitleViewallWidget({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 21,
        right: 21,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'View all',
            style: TextStyle(
                color: ORANGECOLOR, fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
