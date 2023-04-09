import 'package:agc_web_resume/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(
          context.localizations.presentation_description,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 20.0,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
