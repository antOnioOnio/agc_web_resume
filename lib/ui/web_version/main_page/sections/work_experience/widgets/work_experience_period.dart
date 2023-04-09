import 'package:agc_web_resume/ui/web_version/main_page/sections/widgets/vertical_divider.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience/widgets/company_logo_widget.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience/widgets/experience_detail_widget.dart';
import 'package:flutter/material.dart';

class WorkExperiencePeriod extends StatelessWidget {
  final String iconPath;
  final String header;
  final String place;
  final String periodTime;
  final List<String> experienceDetails;

  const WorkExperiencePeriod(
      {Key? key,
      required this.iconPath,
      required this.header,
      required this.experienceDetails,
      required this.place,
      required this.periodTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      child: Stack(
        children: [
          RectangleImageWidget(assetPath: iconPath),
          const Positioned(
            left: 170,
            child: VerticalCustomDivider(
              height: 250,
            ),
          ),
          Positioned.fill(
            left: 190,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      header,
                      style: const TextStyle(
                        fontSize: 18.0,
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
                ...List.generate(
                    experienceDetails.length,
                    (index) =>
                        ExperienceDetailWidget(text: experienceDetails[index])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
