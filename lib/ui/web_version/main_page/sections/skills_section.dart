import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';

class SkillsSections extends StatelessWidget {
  const SkillsSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderText(text: 'Technical Skills'),
            SizedBox(height: 16.0),
            Text(
              '',
              style: TextStyle(
                fontSize: 20.0,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
