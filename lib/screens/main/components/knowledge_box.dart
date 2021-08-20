import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/constants.dart';

class KnowledgeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        _KnowledgeText(
          title: 'Version Control with Git',
        ),
        _KnowledgeText(
          title: 'CI/CD',
        ),
        _KnowledgeText(
          title: 'Mobile/Web Architecture',
        ),
        _KnowledgeText(
          title: 'Documentation',
        ),
        _KnowledgeText(
          title: 'Effective Communication',
        ),
        _KnowledgeText(
          title: 'Block-chain Technology',
        ),
      ],
    );
  }
}

class _KnowledgeText extends StatelessWidget {
  final String? title;
  _KnowledgeText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/icons/svg/check.svg',
            color: primaryColor,
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text('$title')
        ],
      ),
    );
  }
}
