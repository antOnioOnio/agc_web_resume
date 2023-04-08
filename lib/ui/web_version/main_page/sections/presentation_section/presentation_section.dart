import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/core/extensions/context_extensions.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            HeaderText(text: context.localizations.presentation_text),
            const SizedBox(height: 16.0),
            Text(
              context.localizations.presentation_description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
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
