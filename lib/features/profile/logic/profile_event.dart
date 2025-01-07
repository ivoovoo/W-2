part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init(int userId) = ProfileInitEvent;

  const factory ProfileEvent.signIn({
    required String username,
    required String password,
  }) = SignInProfileEvent;

  const factory ProfileEvent.signUp({
    required String userName,
    required String email,
    required String password,
  }) = SignUpProfileEvent;

  const factory ProfileEvent.signOut() = SignOutProfileEvent;
}
