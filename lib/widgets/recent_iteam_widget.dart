import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'beside_rate_star_widget.dart';
import 'row_star_rate_widget.dart';
import 'title_viewall_widget.dart';

class RecentItemsWidget extends StatelessWidget {
  const RecentItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewallWidget(title: 'Recent Items'),
        SizedBox(
          height: 26,
        ),
        ListView.separated(
            padding: EdgeInsets.only(left: 21),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('${path}meal_image${index + 1}.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mealName[index],
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          BesideRateStarWidget(
                            leftContent: 'Cofe',
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          RowStarRateWidget(
                            content: ' (124 Rating)',
                          )
                        ],
                      ),
                    )
                  ],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
            itemCount: 3)
      ],
    );
  }
}

List<String> mealName = ['Mulberry Pizza by Josh', 'Barita', 'Pizza Rush Hour'];
