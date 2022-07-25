import 'package:flutter/material.dart';
import 'package:meal_monkey_app/widgets/beside_rate_star_widget.dart';

import '../utils/constant.dart';
import 'row_star_rate_widget.dart';

class MealPostWidget extends StatelessWidget {
  const MealPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                '${path}image_meal${index + 1}.png',
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 21, right: 21, top: 7, bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bottomTitleMeal[index],
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Row(
                      children: [
                        RowStarRateWidget(content: ' (124 ratings)'),
                        BesideRateStarWidget(leftContent:' Café')
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}

List<String> bottomTitleMeal = [
  'Minute by tuk tuk',
  'Café de Noir',
  'Bakes by Tella'
];
