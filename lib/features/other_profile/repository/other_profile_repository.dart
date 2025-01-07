import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/other_profile/data_provider/other_profile_data_provider.dart';
import 'package:social_network/features/profile/model/user_model.dart';

class OtherProfileRepository {
  final IOtherProfileDataProvider otherProfileDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  OtherProfileRepository({
    required this.otherProfileDataProvider,
    required this.localStorageDataProvider,
  });

  Future<UserModel> getOtherProfile(int userId) {
    return otherProfileDataProvider.getOtherProfile(
      userId,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  Future<String> subscribe(int userId) {
    return otherProfileDataProvider.subscribe(
      userId,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }

  Future<String> unsubscribe(int userId) {
    return otherProfileDataProvider.unsubscribe(
      userId,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
