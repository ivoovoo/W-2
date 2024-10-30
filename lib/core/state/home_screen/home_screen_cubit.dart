import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_network/core/core.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  // Далее код для HomeScreen
  bool isInterfaceVisible = true;

  void interfaceIsVisible() {
    isInterfaceVisible = true;
    emit(HomeScreenInitial());
  }

  void interfaceIsNotVisible() {
    isInterfaceVisible = false;
    emit(HomeScreenInitial());
  }
}
