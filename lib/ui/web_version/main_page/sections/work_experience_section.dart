import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText(text: 'Work Experience'),
              const SizedBox(height: 16.0),

            ],
          ),
        ),
      ),
    );
  }
}
