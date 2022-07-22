import 'package:flutter/material.dart';

import '../utils/constant.dart';

class SingelIndicatorWidget extends StatelessWidget {
  SingelIndicatorWidget({
    Key? key,
    required int pageIndex,
    required this.indicatroIndex,
  })  : _pageIndex = pageIndex,
        super(key: key);

  final int _pageIndex;
  final int indicatroIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: _pageIndex == indicatroIndex
              ? ORANGECOLOR
              : GREYCOLORBACKGROUNDSECOUND,
          shape: BoxShape.circle),
    );
  }
}
