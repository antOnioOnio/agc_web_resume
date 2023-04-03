import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class RowIndicators extends StatelessWidget {
  final int currentPageIndex;

  const RowIndicators({Key? key, required this.currentPageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _DotIndicator(
          selected: 0 == currentPageIndex,
        ),
        _DotIndicator(
          selected: 1 == currentPageIndex,
        ),
        _DotIndicator(
          selected: 2 == currentPageIndex,
        ),
        _DotIndicator(
          selected: 3 == currentPageIndex,
        ),
      ],
    );
  }
}

class _DotIndicator extends StatelessWidget {
  final bool selected;

  const _DotIndicator({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: selected ? 20.0 : 10,
      height: selected ? 20.0 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? AppColors.blueDetailsColor : Colors.grey[400],
          border: selected
              ? Border.all(
                  color: Colors.grey.shade300,
                  width: 5,
                )
              : null),
    );
  }
}
