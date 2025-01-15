import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/helpers/catch_exception.dart';

part 'language_bloc.freezed.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final ILocalStorageDataProvider localStorageDataProvider;

  LanguageBloc(this.localStorageDataProvider)
      : super(const LanguageState.initial(locale: Locale('en'))) {
    on<LanguageEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(event, emit),
        languageChanged: (event) => _onChanged(event, emit),
      ),
    );
  }

  void _onInit(LanguageInitEvent event, Emitter<LanguageState> emit) {
    String? languageOfApp;
    try {
      languageOfApp =
          localStorageDataProvider.getString(LocalStorageKeys.languageOfApp);
      if (languageOfApp == null) {
        emit(const LanguageState.loadSuccess(locale: Locale('en')));
      } else {
        emit(LanguageState.loadSuccess(locale: Locale(languageOfApp)));
      }
    } catch (e) {
      CatchException.convertException(e);
      print('ERROR GETSTRING LANGUAGE OF APP');
    }
  }

  Future<void> _onChanged(
      LanguageChangedEvent event, Emitter<LanguageState> emit) async {
    try {
      await localStorageDataProvider.setString(
          LocalStorageKeys.languageOfApp, event.locale.languageCode);
      emit(LanguageState.loadSuccess(locale: event.locale));
    } catch (e) {
      print('ERROR LANGUAGE CHANGED');
      CatchException.convertException(e);
    }
  }
}
