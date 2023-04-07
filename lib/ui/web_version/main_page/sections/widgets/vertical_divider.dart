import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class VerticalCustomDivider extends StatelessWidget {
  final double height;
  const VerticalCustomDivider({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border(
          left: BorderSide(
            color: AppColors.greyBorderColor,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
