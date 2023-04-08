import 'package:agc_web_resume/core/constants/app_locales.dart';
import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:agc_web_resume/ui/language_bloc/language_bloc_bloc.dart';
import 'package:agc_web_resume/ui/language_bloc/language_bloc_event.dart';
import 'package:agc_web_resume/ui/language_bloc/language_bloc_state.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/page_section_controller.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/language_botton_widget.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/main_header_profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguagesBloc, LanguageBlocState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.bgColor,
          body: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    MainHeaderProfileInfo(),
                    SizedBox(height: 16.0),
                    PageSectionController(),
                  ],
                ),
              ),
              Positioned(
                top: 24,
                right: 50,
                child: Row(
                  children: [
                    LanguageButtonWidget(
                        isSelected: state.isSelected(AppLocales.spanishLocale),
                        onTap: (language) => context.read<LanguagesBloc>().add(
                              LanguageBlocEvent.changedLanguage(
                                Locale.fromSubtags(languageCode: language),
                              ),
                            ),
                        language: 'es'),
                    const SizedBox(
                      width: 8,
                    ),
                    LanguageButtonWidget(
                        isSelected: state.isSelected(AppLocales.englishLocale),
                        onTap: (language) => context.read<LanguagesBloc>().add(
                              LanguageBlocEvent.changedLanguage(
                                Locale.fromSubtags(languageCode: language),
                              ),
                            ),
                        language: 'gb'),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
