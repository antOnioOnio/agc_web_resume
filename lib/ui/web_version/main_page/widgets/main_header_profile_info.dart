import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHeaderProfileInfo extends StatelessWidget {
  const MainHeaderProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/profile_picture.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Columna de información
        const SizedBox(width: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Antonio García Castillo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'SENIOR FLUTTER SOFTWARE DEVELOPER IN ACCENTURE',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: const [
                  FaIcon(
                    FontAwesomeIcons.locationDot,
                    color: AppColors.blueDetailsColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Granada, Spain',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: AppColors.blueDetailsColor,
                ),
                SizedBox(width: 8),
                FaIcon(
                  FontAwesomeIcons.github,
                  color: AppColors.blueDetailsColor,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
