import 'package:flutter/material.dart';

import '../utils/constant.dart';

class MealIteamWidget extends StatelessWidget {
  const MealIteamWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      margin: EdgeInsets.only(top: 30, bottom: 57),
      padding: EdgeInsets.only(left: 21),
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '${path}meal_image${index + 1}.png',
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                bottomTitle[index],
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 18,
          );
        },
      ),
    );
  }
}

List<String> bottomTitle = ['Offers', 'Sri Lankan', 'Italian', 'Indian'];
