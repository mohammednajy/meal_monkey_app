import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'single_indicator_widget.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    Key? key,
    required int pageIndex,
  })  : _pageIndex = pageIndex,
        super(key: key);

  final int _pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingelIndicatorWidget(
          pageIndex: _pageIndex,
          indicatroIndex: 0,
        ),
        SingelIndicatorWidget(
          pageIndex: _pageIndex,
          indicatroIndex: 1,
        ),
        SingelIndicatorWidget(
          pageIndex: _pageIndex,
          indicatroIndex: 2,
        ),
      ],
    );
  }
}
