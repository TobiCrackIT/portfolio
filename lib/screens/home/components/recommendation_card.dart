import 'package:flutter/material.dart';
import 'package:portfolio/models/recommendation.dart';
import 'package:portfolio/utils/constants.dart';

class RecommendationCard extends StatelessWidget {

  final Recommendation recommendation;

  const RecommendationCard({
    Key? key,
    required this.recommendation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.only(right: defaultPadding),
      color: secondaryColor,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendation.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}