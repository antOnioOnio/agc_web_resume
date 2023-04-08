import 'package:agc_web_resume/ui/language_bloc/language_bloc_bloc.dart';
import 'package:agc_web_resume/ui/language_bloc/language_bloc_state.dart';
import 'package:agc_web_resume/ui/web_version/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguagesBloc(),
      child: BlocBuilder<LanguagesBloc, LanguageBlocState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            home: const MainPage(),
          );
        },
      ),
    );
  }
}
