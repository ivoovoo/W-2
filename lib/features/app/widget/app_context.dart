import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/core/language/language_bloc.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/generated/l10n.dart';

class AppContext extends StatelessWidget {
  const AppContext({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        Locale appLocale;
        if (state is LanguageLoadSuccess) {
          appLocale = state.locale;
        } else {
          appLocale = const Locale('en');
        }

        return ScreenUtilInit(
          child: SafeArea(
            top: false,
            right: false,
            left: false,
            child: MaterialApp.router(
              locale: appLocale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(primarySwatch: Colors.blue),
              // locale: TranslationProvider.of(context).flutterLocale,
            ),
          ),
        );
      },
    );
  }
}
