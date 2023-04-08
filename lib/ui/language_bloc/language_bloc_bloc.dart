import 'dart:ui';

import 'package:agc_web_resume/ui/language_bloc/language_bloc_event.dart';
import 'package:agc_web_resume/ui/language_bloc/language_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagesBloc extends Bloc<LanguageBlocEvent, LanguageBlocState> {
  LanguagesBloc()
      : super(
          const LanguageBlocState(
              locale: Locale.fromSubtags(languageCode: 'gb')),
        ) {
    on<LanguageBlocEvent>(
      (event, emit) async {
        event.when(changedLanguage: (locale) {
          emit(
            state.copyWith(locale: locale),
          );
        });
      },
    );
  }
}
