import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  static BoxDecoration sectionDecoration = BoxDecoration(
    border: Border.all(
      color: AppColors.greyBorderColor,
      width: 0.5,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(8.0),
    ),
  );
}
