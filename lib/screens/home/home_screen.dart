import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/home/components/my_projects.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:portfolio/utils/constants.dart';

import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Row(
          children: [
            TweenAnimationBuilder(
              tween: IntTween(begin: 0, end: 100),
              duration: Duration(
                seconds: 5,
              ),
              builder: (context, value, child) => Text(
                '$value+ packages',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: primaryColor),
              ),
            ),
          ],
        ),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}


