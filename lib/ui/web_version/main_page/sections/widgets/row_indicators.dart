import 'package:agc_web_resume/core/constants/app_sections.dart';
import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class RowIndicators extends StatelessWidget {
  final int currentPageIndex;
  final PageController pageController;

  const RowIndicators(
      {Key? key, required this.currentPageIndex, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          AppSectionsExtension.getSections().length,
          (index) => GestureDetector(
            onTap: () => pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn),
            child: _TextIndicator(
              selected: index == currentPageIndex,
              text: AppSectionsExtension.getSections()[index].getLabel(context),
            ),
          ),
        ));
  }
}

class _TextIndicator extends StatelessWidget {
  final bool selected;
  final String text;

  const _TextIndicator({Key? key, required this.selected, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? AppColors.blueDetailsColor : Colors.grey[400],
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
