import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/core/data/local_storage_data_provider.dart';
import 'package:social_network/features/chats/data_providers/apps_data_provider/apps_data_provider.dart';
import 'package:social_network/features/chats/data_providers/groups_data_provider/groups_data_provider.dart';
import 'package:social_network/features/chats/repositories/apps_repository/apps_repository.dart';
import 'package:social_network/features/chats/repositories/groups_repository/groups_repository.dart';
import 'package:social_network/features/home_page/data_provider/home_data_provider.dart';
import 'package:social_network/features/home_page/repository/home_repository.dart';
import 'package:social_network/features/profile/data_provider/profile_data_provider.dart';
import 'package:social_network/features/profile/repository/profile_repository.dart';

class RepositoryScope extends StatelessWidget {
  const RepositoryScope({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ProfileRepository>(
          create: (context) => ProfileRepository(
            localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
            profileDataProvider: context.read<IProfileDataProvider>(),
          ),
        ),
        RepositoryProvider<AppsRepository>(
          create: (context) => AppsRepository(
            appsDataProvider: context.read<IAppsDataProvider>(),
            localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
          ),
        ),
        RepositoryProvider<GroupsRepository>(
          create: (context) => GroupsRepository(
            groupsDataProvider: context.read<IGroupsDataProvider>(),
            localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
          ),
        ),
        RepositoryProvider<HomeRepository>(
          create: (context) => HomeRepository(
            homeDataProvider: context.read<IHomeDataProvider>(),
          ),
        ),
        RepositoryProvider<ProfileRepository>(
          create: (context) => ProfileRepository(
            profileDataProvider: context.read<IProfileDataProvider>(),
            localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
