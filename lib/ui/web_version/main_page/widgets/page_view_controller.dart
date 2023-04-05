import 'package:agc_web_resume/ui/web_version/main_page/sections/education_sections.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/presentation_section.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/skills_section.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience_section.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/row_indicators.dart';
import 'package:agc_web_resume/ui/web_version/utils/mouse_drgable_scroll_behaviour.dart';
import 'package:flutter/material.dart';

class MySectionView extends StatefulWidget {
  const MySectionView({Key? key}) : super(key: key);

  @override
  State<MySectionView> createState() => _MySectionViewState();
}

class _MySectionViewState extends State<MySectionView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: true,
            scrollBehavior: MouseDraggableScrollBehavior(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            children: const [
              WorkExperienceSection(),
              SkillsSections(),
              PresentationSection(),
              EducationSection(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 8,
            child: RowIndicators(currentPageIndex: _currentPageIndex),
          ),
        ],
      ),
    );
  }
}
