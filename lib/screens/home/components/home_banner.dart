import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/utils/constants.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(
              0.66,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover the awesome products \nI have worked on',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                Responsive.isMobile(context)? Expanded(
                  child: AnimatedText(),
                ):AnimatedText(),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(
                    height: defaultPadding,
                  ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                    ),
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle1!,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            'Android and iOS apps.',
            speed: Duration(
              milliseconds: 60,
            ),
          ),
          TyperAnimatedText(
            'Quality mobile products.',
            speed: Duration(
              milliseconds: 60,
            ),
          ),
          TyperAnimatedText(
            'Clean and efficient coding pattern.',
            speed: Duration(
              milliseconds: 60,
            ),
          ),
          TyperAnimatedText(
            'Pixel-perfect designs.',
            speed: Duration(
              milliseconds: 60,
            ),
          ),
        ],
      ),
    );
  }
}
