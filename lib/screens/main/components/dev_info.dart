import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class DevInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(
          0xff242430,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/me.jpg',
              ),
            ),
            Spacer(),
            Text(
              'Meme du Meme',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class DevInfoText extends StatelessWidget {
  final String? title, subTitle;
  DevInfoText({Key? key, this.title, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            '$subTitle',
          ),
        ],
      ),
    );
  }
}
