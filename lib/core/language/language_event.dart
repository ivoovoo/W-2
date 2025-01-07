part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.languageChanged({required Locale locale}) =
      LanguageChanged;
}
