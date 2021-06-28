import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {

  final double percentage;
  final String? title;


  AnimatedLinearProgressIndicator({Key? key,this.percentage:1, this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: defaultDuration,
            builder: (context, double value, child) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$title',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),

                    Text(
                      '${(percentage*100).toString()}%',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),

                  ],
                ),
                 SizedBox(height: defaultPadding/2,),
                 LinearProgressIndicator(
                    value: percentage,
                    valueColor:
                    AlwaysStoppedAnimation<Color>(primaryColor),
                    backgroundColor: darkColor,
                  ),

              ],
            ),
          ),

      ],
    );
  }
}
