part of 'keyboard_cubit.dart';

@immutable
sealed class KeyboardState {}

final class KeyboardClosed extends KeyboardState {}

final class KeyboardOpened extends KeyboardState {}
