import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';

import '../../data_providers/apps_data_provider/apps_data_provider.dart';

class AppsRepository {
  final IAppsDataProvider appsDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  AppsRepository({
    required this.appsDataProvider,
    required this.localStorageDataProvider,
  });

  Future<AppsModel> getApps() {
    return appsDataProvider.getApps(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  getUserId() {
    return localStorageDataProvider.getInt(LocalStorageKeys.userId);
  }

  Future<AppsModel> createApp(dynamic json) {
    return appsDataProvider.createApp(
      json,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
