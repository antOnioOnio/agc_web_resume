import 'package:flutter/material.dart';

class ExperienceDetailWidget extends StatelessWidget {
  final String text;

  const ExperienceDetailWidget({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: '\u2022 ',
              style: const TextStyle(
                fontSize: 16,
                height: 1.55,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: text,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.55,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
