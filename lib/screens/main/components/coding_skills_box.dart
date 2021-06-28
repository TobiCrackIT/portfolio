import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import 'animated_linear_progress_indicator.dart';

class CodingSkillsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedLinearProgressIndicator(
              percentage: 0.75,
              title: 'Dart',
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.60,
              title: 'Java',
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.52,
              title: 'Solidity',
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Divider(),
      ],
    );
  }
}
