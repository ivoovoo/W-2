import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_data_provider.dart';
import 'package:social_network/features/chats/data_providers/apps_data_provider/apps_data_provider.dart';
import 'package:social_network/features/chats/data_providers/groups_data_provider/groups_data_provider.dart';
import 'package:social_network/features/home_page/data_provider/home_data_provider.dart';
import 'package:social_network/features/profile/data_provider/profile_data_provider.dart';

class DataProviderScope extends StatelessWidget {
  const DataProviderScope({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ILocalStorageDataProvider>(
          create: (context) => LocalStorageDataProvider(
            prefs: context.read<SharedPreferences>(),
          ),
        ),
        RepositoryProvider<IHomeDataProvider>(
          create: (context) => HomeDataProvider(),
        ),
        RepositoryProvider<IGroupsDataProvider>(
          create: (context) => GroupsDataProvider(),
        ),
        RepositoryProvider<IAppsDataProvider>(
          create: (context) => AppsDataProvider(),
        ),
        RepositoryProvider<IProfileDataProvider>(
          create: (context) => ProfileDataProvider(),
        ),
      ],
      child: child,
    );
  }
}
