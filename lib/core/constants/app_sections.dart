import 'package:agc_web_resume/core/extensions/context_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_sections.freezed.dart';

@freezed
class AppSections with _$AppSections {
  const factory AppSections.presentation() = _Presentation;

  const factory AppSections.workExperience() = _WorkExperience;

  const factory AppSections.technicalSkills() = _TechnicalSkills;

  const factory AppSections.education() = _Education;
}

extension AppSectionsExtension on AppSections {
  String getLabel(BuildContext context) => when(
      presentation: () => context.localizations.presentation_text,
      workExperience: () => 'workExperience',
      technicalSkills: () => 'technicalSkills',
      education: () => 'education');

  static List<AppSections> getSections() => const [
        AppSections.presentation(),
        AppSections.workExperience(),
        AppSections.technicalSkills(),
        AppSections.education()
      ];
}
