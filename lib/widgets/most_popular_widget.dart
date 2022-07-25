import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'beside_rate_star_widget.dart';
import 'row_star_rate_widget.dart';
import 'title_viewall_widget.dart';



class MostPopularWidget extends StatelessWidget {
  const MostPopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewallWidget(title: 'Most Popular'),
        Container(
          margin: EdgeInsets.only(left: 21, top: 33, bottom: 37),
          height: 185,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      '${path}meal${index + 1}.png',
                      height: 135,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Café De Bambaa',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Row(
                      children: [
                        BesideRateStarWidget(
                          leftContent: ' Cofe',
                          rightPadding: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RowStarRateWidget()
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 19,
                  ),
              itemCount: 2),
        ),
      ],
    );
  }
}
