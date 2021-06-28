import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {

  final double percentage;
  final String? title;


  AnimatedCircularProgressIndicator({Key? key,this.percentage:1, this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: percentage,
                  strokeWidth: 3,
                  valueColor:
                  AlwaysStoppedAnimation<Color>(primaryColor),
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    '${(percentage*100).toString()}%',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: defaultPadding/2,),
        Text(
          '$title',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
