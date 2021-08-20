import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/utils/constants.dart';

import 'projects_grid_view.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
            childAspectRatio: 1.1,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1,
          ),
          desktop: ProjectsGridView(),
        ),
      ],
    );
  }
}
