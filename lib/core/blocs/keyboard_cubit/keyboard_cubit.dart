import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'keyboard_state.dart';

class KeyboardCubit extends Cubit<KeyboardState> {
  KeyboardCubit() : super(KeyboardClosed());

  void toOpenKeyboard() {
    emit(KeyboardOpened());
  }

  void toCloseKeyboard() {
    emit(KeyboardClosed());
  }
}
