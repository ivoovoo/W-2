part of 'keyboard_cubit.dart';

@immutable
sealed class KeyboardState {}

final class KeyboardInitial extends KeyboardState {}

final class KeyboardOpened extends KeyboardState{}
