import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/skill_widget.dart';
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
          children: [
            const HeaderText(text: 'Technical Skills'),
            const SizedBox(height: 36.0),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: const [
                        SkillWidget(
                          header: 'Programming Languages',
                          setValues: ['Flutter & Dart', 'Java'],
                        ),
                        SizedBox(height: 10),
                        SkillWidget(
                          header: 'Databases',
                          setValues: [
                            'Moor (Sql) - Flutter',
                            'SharedPreferences (NoSql) - Flutter',
                            'Floor (Sql) - Flutter',
                            'Hive (NoSql)- Flutter',
                            'Room (Sql) - Android',
                          ],
                        ),
                        SizedBox(height: 10),
                        SkillWidget(
                          header: 'State Management in Flutter',
                          setValues: ['Riverpod', 'Flutter Bloc', 'Provider'],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: const [
                        SkillWidget(
                          header: 'Architectures',
                          setValues: [
                            'MVVM',
                            'Clean Architecture',
                            'MVM',
                          ],
                        ),
                        SizedBox(height: 10),
                        SkillWidget(
                          header: 'Services',
                          setValues: [
                            'Api Rest integration',
                            'GraphQl',
                            'Firebase',
                            'Map & Gps Integration',
                            'Elastic Search'
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: const [
                        SkillWidget(
                          header: 'Others',
                          setValues: [
                            'Git & Gitflow Workflow',
                            'CodeMagic',
                            'Firebase',
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
