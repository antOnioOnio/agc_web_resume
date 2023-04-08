import 'package:agc_web_resume/core/constants/assets.dart';
import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/work_experience/widgets/work_experience_period.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';


class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderText(text: 'Work Experience'),
              SizedBox(height: 16.0),
              WorkExperiencePeriod(
                  iconPath: AppAssets.accentureLogo,
                  header: 'Accenture - Senior Flutter Software Developer',
                  experienceDetails: [
                    'Developed new features for Flutter applications to enhance their functionality and user experience.',
                    'Led a small team of 4 developers, coordinating their efforts to ensure the timely completion of projects and successful delivery to clients.',
                    'Reviewed code submitted by team members, providing constructive feedback to improve code quality and maintainability.',
                    'Wrote documentation to capture project requirements, design decisions, and implementation details, ensuring that all stakeholders had access to relevant information and could effectively collaborate on the project.',
                  ],
                  place: 'Malaga',
                  periodTime: '01/2023 - Present'),
              WorkExperiencePeriod(
                iconPath: AppAssets.blindsideLogo,
                header: 'Blindside - Flutter Software Developer',
                experienceDetails: [
                  'Revised, modularized and updated old code bases to modern development standards using Riverpod as state management and MVVP architecture with Repository Pattern and Hive as local database.',
                  'Took initial concepts and mockups and developed complete new sub-project modules always trying to follow the best code practices.',
                  'Reviewed code, debugged problems and corrected issues.',
                  'Documented technical workflows and knowledge in private outline for education of newly hired employees.',
                  'Coordinated pipelines and deployments to Google Store and AppStoreConnect of new updated and fixes using Bitbucket + Codemagic.',
                ],
                place: 'Berlin',
                periodTime: '06/2022 - 12/2022',
              ),
              WorkExperiencePeriod(
                  iconPath: AppAssets.veletaSolutionsLogo,
                  header: 'Veleta Solutions - Mobile Software Developer',
                  experienceDetails: [
                    'Collaborated in stages of systems development lifecycle from requirement gathering to production releases.',
                    'Led the development of several apps for different companies in different fields that go from airport stores, swiss telecommunications or delivery companies.',
                    'Employed third-party APIs to facilitate seamless access to external, in-app cloud data.',
                    'Designed and maintained streamlined, reusable and reliable code for use within distributed cloud environments.',
                    'Designed and maintained streamlined, reusable and reliable code for use within distributed cloud environments.',
                    'Created custom mobile applications using native and hybrid technologies.'
                  ],
                  place: 'Granada',
                  periodTime: '05/2019 - 06/2022'),

            ],
          ),
        ),
      ),
    );
  }
}


