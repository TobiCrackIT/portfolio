import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/home/components/my_projects.dart';
import 'package:portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: 10,),
        MyProjects(),
        SizedBox(height: 60,),
        //Recommendations()
      ],
    );
  }
}


