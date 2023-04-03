import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return         Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.blueDetailsColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              width: 50,
              height: 5,
            ),
             Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
