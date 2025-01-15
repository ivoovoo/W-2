part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = EditProfileInitState;

  const factory EditProfileState.loadInProgress() =
      EditProfileLoadInProgressState;

  const factory EditProfileState.loadSuccess(String? birthday) =
      EditProfileLoadSuccessState;

  const factory EditProfileState.loadFailure(String error) =
      EditProfileLoadFailureState;
}
