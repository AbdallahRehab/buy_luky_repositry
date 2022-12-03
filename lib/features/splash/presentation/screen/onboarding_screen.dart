import 'package:buy_luck/features/user_management/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:buy_luck/core/library/personal_library/introduction.dart';
import 'package:buy_luck/core/library/personal_library/introscreenonboarding.dart';

import '../../../../core/constants/app/app_constants.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "OnBoardingScreen/";
  final List<Introduction> list = [
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: IMG_APP_LOGO,
    ),
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: IMG_APP_LOGO,
    ),
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: IMG_APP_LOGO,
    ),
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: IMG_APP_LOGO,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.pushNamed(
          context,
          LoginScreen.routeName, //MaterialPageRoute
        );
      },
    );
  }
}
