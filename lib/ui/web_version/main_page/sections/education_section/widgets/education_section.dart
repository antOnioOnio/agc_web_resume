import 'package:agc_web_resume/ui/web_version/main_page/sections/widgets/vertical_divider.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience/widgets/company_logo_widget.dart';
import 'package:flutter/material.dart';

class EducationPeriod extends StatelessWidget {
  final String iconPath;
  final String header;
  final String place;
  final String periodTime;
  final String? description;

  const EducationPeriod(
      {Key? key,
      required this.iconPath,
      required this.header,
      required this.place,
      required this.periodTime,
      this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 80.0),
        child: Stack(
          children: [
            RectangleImageWIdget(width: 100, height: 100, assetPath: iconPath),
            const Positioned(
              left: 130,
              child: VerticalCustomDivider(height: 100),
            ),
            Positioned.fill(
              left: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        header,
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: place,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                              text: '\u2022 ',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.55,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: periodTime,
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.55,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (description != null)
                    Row(
                      children: [
                        Text(
                          description ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.55,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
