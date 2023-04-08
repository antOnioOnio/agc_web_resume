import 'package:agc_web_resume/ui/web_version/main_page/sections/education_section/education_sections.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/presentation_section/presentation_section.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/skill_section/skills_section.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/widgets/row_indicators.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience/work_experience_section.dart';
import 'package:agc_web_resume/ui/web_version/utils/mouse_drgable_scroll_behaviour.dart';
import 'package:flutter/material.dart';

class PageSectionController extends StatefulWidget {
  const PageSectionController({Key? key}) : super(key: key);

  @override
  State<PageSectionController> createState() => _PageSectionControllerState();
}

class _PageSectionControllerState extends State<PageSectionController> {
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
              PresentationSection(),
              WorkExperienceSection(),
              SkillsSections(),
              EducationSection(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 2,
            child: RowIndicators(
              currentPageIndex: _currentPageIndex,
              pageController: _pageController,
            ),
          ),
        ],
      ),
    );
  }
}
