import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/screens/main/components/coding_skills_box.dart';
import 'package:portfolio/screens/main/components/dev_info.dart';
import 'package:portfolio/screens/main/components/knowledge_box.dart';
import 'package:portfolio/screens/main/components/skills_box.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/helpers.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            DevInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  children: [
                    /*DevInfoText(
                      title: 'Location',
                      subTitle: 'Global',
                    ),*/
                    SkillsBox(),
                    CodingSkillsBox(),
                    KnowledgeBox(),
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Text(
                                'CV',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset(
                                'assets/icons/svg/download.svg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Color(
                        0xff24242E,
                      ),
                      margin: EdgeInsets.only(top: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Spacer(),
                          IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/svg/github.svg',
                            ),
                            onPressed: () =>
                                launchWebsite('https://github.com/TobiCrackIT'),
                          ),
                          IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/svg/linkedin.svg',
                            ),
                            onPressed: () => launchWebsite(
                                'https://www.linkedin.com/in/oluwatobi-oluwatoyin/'),
                          ),
                          IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/svg/twitter.svg',
                            ),
                            onPressed: () => launchWebsite(
                                'https://twitter.com/oluwasquared'),
                          ),
                          IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/svg/behance.svg',
                            ),
                            onPressed: () => launchWebsite(
                                'https://www.behance.net/oluwatobig'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
