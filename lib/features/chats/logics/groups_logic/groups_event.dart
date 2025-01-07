part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.init() = GroupsEventInit;

  const factory GroupsEvent.createGroupChat(
      {required dynamic formDataGroupChat}) = CreateGroupEvent;
}
