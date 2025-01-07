part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitialState;

  const factory ProfileState.loadInProgress() = ProfileLoadInProgressState;

  const factory ProfileState.loadSuccess(UserModel user) =
      ProfileLoadSuccessState;

  const factory ProfileState.signOutSuccess() = ProfileSignOutSuccessState;

  const factory ProfileState.loadFailure(String error) =
      ProfileLoadFailureState;
}
