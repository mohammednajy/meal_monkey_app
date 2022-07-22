import 'package:flutter/material.dart';
import 'package:meal_monkey_app/main.dart';
import 'package:meal_monkey_app/widgets/button_widget.dart';
import 'package:meal_monkey_app/widgets/sub_title_widget.dart';
import 'package:meal_monkey_app/widgets/title_widget.dart';

import '../../utils/constant.dart';
import '../../widgets/indicator_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _pageIndex = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 112,
          ),
          SizedBox(
            height: 294.81,
            width: double.infinity,
            child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    _pageIndex = value;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Image.asset('${path}on_boarding_${index + 1}.png');
                }),
          ),
          SizedBox(
            height: 50,
          ),
          IndicatorWidget(pageIndex: _pageIndex),
          onBoardingText(_pageIndex),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: ButtonWidget(
                buttonWidth: double.infinity,
                titel: 'Next',
                titelColor: Colors.white,
                backgroundColor: ORANGECOLOR,
                onPressed: () {
                  _pageIndex == 2
                      ? Navigator.pushReplacementNamed(
                          context, ScreenName.loginRegisterScreen.toString())
                      : _controller.nextPage(
                          duration: Duration(seconds: 1), curve: Curves.ease);
                }),
          )
        ],
      ),
    );
  }

  Column onBoardingText(int index) {
    Column colunm = Column();
    List<String> title = [
      'Find Food You Love',
      'Fast Delivery',
      'Live Tracking'
    ];
    List<String> descreption = [
      'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
      'Fast food delivery to your home, office wherever you are',
      'Real time tracking of your food on the app once you placed the order'
    ];

    switch (index) {
      case 0:
        colunm = Column(
          children: [
            TextTitleWidget(bottomPadding: 33, topPadding: 32, titel: title[0]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SubTitleWidget(bottomHeight: 62, content: descreption[0]),
            )
          ],
        );
        break;
      case 1:
        colunm = Column(
          children: [
            TextTitleWidget(bottomPadding: 33, topPadding: 32, titel: title[1]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SubTitleWidget(bottomHeight: 62, content: descreption[1]),
            )
          ],
        );
        break;
      case 2:
        colunm = Column(
          children: [
            TextTitleWidget(bottomPadding: 33, topPadding: 32, titel: title[2]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SubTitleWidget(bottomHeight: 62, content: descreption[2]),
            )
          ],
        );
        break;
    }

    return colunm;
  }
}
