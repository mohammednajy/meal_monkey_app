import 'package:flutter/material.dart';
import 'package:meal_monkey_app/widgets/beside_rate_star_widget.dart';
import 'package:meal_monkey_app/widgets/row_star_rate_widget.dart';
import 'package:meal_monkey_app/widgets/text_field_widget.dart';
import 'package:meal_monkey_app/widgets/title_viewall_widget.dart';

import '../../utils/constant.dart';
import '../../widgets/drop_down_widget.dart';
import '../../widgets/meal_iteam_widget.dart';
import '../../widgets/meal_post_widget.dart';
import '../../widgets/most_popular_widget.dart';
import '../../widgets/popular_restaurents_widget.dart';
import '../../widgets/recent_iteam_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good morning Akila!',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('${path}shopping-cart.png')),
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text('Delivering to',
                      style: Theme.of(context).textTheme.headline2),
                  DropdownWidget(),
                  SizedBox(
                    height: 34,
                  ),
                  TextFieldWidget(
                      vertical: 10,
                      height: 50,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      hintText: 'Search food',
                      obscureText: false,
                      keyboardType: TextInputType.text)
                ],
              ),
            ),
            MealIteamWidget(),
            PopularRestaurentsWidget(),
            MostPopularWidget(),
            RecentItemsWidget()
          ],
        ),
      ),
    );
  }
}




