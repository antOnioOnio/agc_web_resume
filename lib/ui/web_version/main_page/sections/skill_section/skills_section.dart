import 'package:agc_web_resume/ui/web_version/main_page/sections/skill_section/widgets/skill_widget.dart';
import 'package:flutter/material.dart';

class SkillsSections extends StatelessWidget {
  const SkillsSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: const [
                    SkillWidget(
                      header: 'Programming Languages',
                      setValues: ['Dart - Flutter ', 'Java - Android'],
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
                      header: 'Languages',
                      setValues: [
                        'Spanish - Native',
                        'English - Fluently',
                      ],
                    ),
                    SizedBox(height: 10),
                    SkillWidget(
                      header: 'Others',
                      setValues: [
                        'Git & Gitflow Workflow',
                        'CodeMagic',
                        'Team lead',
                        'Continuous learning'
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
