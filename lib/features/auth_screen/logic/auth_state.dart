part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;

  const factory AuthState.loadInProgress() = AuthLoadInProgressState;

  const factory AuthState.loadSuccess() = AuthLoadSuccessState;

  const factory AuthState.loadFailure(String error) = AuthLoadFailureState;
}
