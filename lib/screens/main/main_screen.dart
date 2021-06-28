import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';
import 'package:portfolio/utils/constants.dart';

class MainScreen extends StatelessWidget {

  final List<Widget> children;
  const MainScreen({Key? key,required this.children}):super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
