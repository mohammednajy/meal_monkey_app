import 'package:flutter/material.dart';

import 'meal_post_widget.dart';
import 'title_viewall_widget.dart';

class PopularRestaurentsWidget extends StatelessWidget {
  const PopularRestaurentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewallWidget(title: 'Popular Restaurents'),
        SizedBox(
          height: 20,
        ),
        MealPostWidget(),
      ],
    );
  }
}
