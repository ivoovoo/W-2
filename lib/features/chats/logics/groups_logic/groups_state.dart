part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState {
  const factory GroupsState.initial() = GroupsInitialState;

  const factory GroupsState.loadInProgress() = GroupsLoadInProgressState;

  const factory GroupsState.loadSuccess(GroupsModel groups) =
      GroupsLoadSuccessState;

  const factory GroupsState.loadFailure(String error) = GroupsLoadFailureState;
}
