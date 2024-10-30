import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:meta/meta.dart';
import 'package:social_network/data.dart';

part 'home_screen_and_profile_screen_state.dart';

class HomeScreenAndProfileScreenCubit
    extends Cubit<HomeScreenAndProfileScreenState> {
  HomeScreenAndProfileScreenCubit()
      : super(HomeScreenAndProfileScreenInitial());

  bool myProfile = true;

  void notMyProfile(user) {
    myProfile = false;
    user = user;
    emit(HomeScreenAndProfileScreenInitial());
  }

  void itsMyProfile() {
    myProfile = true;
    emit(HomeScreenAndProfileScreenInitial());
  }

  bool myContent = false;

  void notMyContent() {
    myContent = false;
    emit(HomeScreenAndProfileScreenInitial());
  }

  void itsMyContent() {
    myContent = true;
    emit(HomeScreenAndProfileScreenInitial());
  }

  bool datingProfileScreen = false;

  void notDatingProfileScreen() {
    datingProfileScreen = false;
    emit(HomeScreenAndProfileScreenInitial());
  }

  void itsDatingProfileScreen() {
    datingProfileScreen = true;
    emit(HomeScreenAndProfileScreenInitial());
  }
}
