import 'package:agc_web_resume/core/constants/assets.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/education_section/widgets/education_section.dart';
import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        EducationPeriod(
          iconPath: AppAssets.ugrLogo,
          header: 'Degree in Computer Engineering',
          place: 'UGR ',
          periodTime: '09/16 - 06/21',
          description: 'Specializing in Information Technologies.',
        ),
        EducationPeriod(
          iconPath: AppAssets.hlanzLogo,
          header: 'Certificate in Developing Construction Projects:',
          place: 'IEP Hermenegildo Lanz ',
          periodTime: '09/07 - 05/09',
        )
      ],
    );
  }
}
