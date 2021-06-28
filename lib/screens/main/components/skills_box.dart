import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import 'animated_circular_progress_indicator.dart';

class SkillsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(

          children: [
            Expanded(child: AnimatedCircularProgressIndicator(percentage: 0.72,title: 'Dart',)),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgressIndicator(percentage: 0.80,title: 'Flutter',)),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgressIndicator(percentage: 0.51,title: 'Go',)),

          ],
        ),
        SizedBox(height: defaultPadding,),
        Divider(),
      ],
    );
  }
}
