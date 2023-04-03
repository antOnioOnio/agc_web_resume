import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  static BoxDecoration sectionDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.grey.shade300,
      width: 0.5,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(8.0),
    ),
  );
}
