import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/user_model.dart';
import '../repository/profile_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository) : super(const ProfileState.initial()) {
    on<ProfileEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(event, emit),
        signIn: (event) => _onSignIn(event, emit),
        signUp: (event) => _onSignUp(event, emit),
        signOut: (event) => _onSignOut(emit),
        enableChatGpt: (event) => _onEnableChatGpt(event, emit),
      ),
    );
  }

  Future<void> _onInit(
      ProfileInitEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loadInProgress());
    try {
      final responseModel = await profileRepository.getProfile(event.userId);
      emit(ProfileState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        ProfileState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onEnableChatGpt(
      EnableChatGptProfileEvent event, Emitter<ProfileState> emit) async {
    try {
      final responseModel =
          await profileRepository.enableChatGpt(event.enabled);
      emit(const ProfileState.enabledChatGpt());
    } catch (e) {
      print('Error enable chatgpt');
    }
  }

  Future<void> _onSignIn(
      SignInProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loadInProgress());
    try {
      // Подготовка данных для авторизации
      final data = {
        "username": event.username,
        "password": event.password,
      };

      final response = await profileRepository.signIn(data);

      emit(ProfileState.loadSuccess(response));
    } catch (e) {
      emit(ProfileState.loadFailure(e.toString()));
    }
  }

  Future<void> _onSignUp(
      SignUpProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loadInProgress());
    try {
      // Подготовка данных для регистрации
      final data = {
        "username": event.userName,
        "email": event.email,
        "password": event.password,
      };

      final response = await profileRepository.signUp(data);

      emit(ProfileState.loadSuccess(response));
    } catch (e) {
      emit(ProfileState.loadFailure(e.toString()));
    }
  }

  Future<void> _onSignOut(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loadInProgress());
    try {
      await profileRepository.signOut();
      emit(const ProfileState.signOutSuccess());
    } catch (e) {
      emit(
        ProfileState.loadFailure(e.toString()),
      );
    }
  }
}
