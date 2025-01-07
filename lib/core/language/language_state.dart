part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial({required Locale locale}) =
      LanguageInitial;
  const factory LanguageState.loadSuccess({required Locale locale}) =
      LanguageLoadSuccess;
}
