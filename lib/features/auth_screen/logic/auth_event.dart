part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(
      {required String email, required String password}) = _SignIn;

  const factory AuthEvent.signUp(
      {required String userName,
      required String email,
      required String password}) = _SignUp;
}
