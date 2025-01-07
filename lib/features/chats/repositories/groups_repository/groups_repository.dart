import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/chats/data_providers/groups_data_provider/groups_data_provider.dart';
import 'package:social_network/features/chats/models/groups_model/groups_model.dart';

class GroupsRepository {
  final IGroupsDataProvider groupsDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  GroupsRepository({
    required this.groupsDataProvider,
    required this.localStorageDataProvider,
  });

  Future<GroupsModel> getGroups() {
    return groupsDataProvider.getGroups(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  Future<GroupsModel> createGroupChat(dynamic json) {
    return groupsDataProvider.createGroupChat(
      json,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
