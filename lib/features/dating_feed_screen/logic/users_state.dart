part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = UsersInitialState;

  const factory UsersState.loadInProgress() = UsersLoadInProgressState;

  const factory UsersState.loadSuccess(UserListResponse users) =
      UsersLoadSuccessState;

  const factory UsersState.loadFailure(String error) = UsersLoadFailureState;
}
