import 'package:agc_web_resume/core/constants/app_sections.dart';
import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';

class SectionTemplate extends StatelessWidget {
  final Widget child;
  final AppSections section;

  const SectionTemplate(
      {Key? key,
      required this.child,
      required this.section})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText(text: section.getLabel(context)),
            const SizedBox(height: 22),
            Expanded(child: child)
          ],
        ),
      ),
    );
  }
}
