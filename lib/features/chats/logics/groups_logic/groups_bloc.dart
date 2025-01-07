import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/chats/models/groups_model/groups_model.dart';

import '../../repositories/groups_repository/groups_repository.dart';

part 'groups_event.dart';

part 'groups_state.dart';

part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final GroupsRepository groupsRepository;

  GroupsBloc(this.groupsRepository) : super(const GroupsState.initial()) {
    on<GroupsEvent>((event, emit) async {
      await event.map(
        init: (initEvent) async {
          emit(const GroupsState.loadInProgress());
          try {
            final response = await groupsRepository.getGroups();

            emit(GroupsState.loadSuccess(response));
          } catch (e) {
            emit(GroupsState.loadFailure(e.toString()));
          }
        },
        createGroupChat: (createGroupChatEvent) async {
          emit(const GroupsState.loadInProgress());
          try {
            // final data = {
            //   "name": createGroupChatEvent.groupName,
            //   "group_image": createGroupChatEvent.groupImage,
            // };

            print(createGroupChatEvent.formDataGroupChat);
            print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
            final response = await groupsRepository
                .createGroupChat(createGroupChatEvent.formDataGroupChat);

            emit(GroupsState.loadSuccess(response));
          } catch (e) {
            emit(GroupsState.loadFailure(e.toString()));
          }
        },
      );
    });
  }
}
