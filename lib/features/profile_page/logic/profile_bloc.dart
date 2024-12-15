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
      ),
    );
  }

  Future<void> _onInit(ProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loadInProgress());
    try {
      final responseModel = await profileRepository.getProfile(event.userId);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(ProfileState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        ProfileState.loadFailure(e.toString()),
      );
    }
  }
}
