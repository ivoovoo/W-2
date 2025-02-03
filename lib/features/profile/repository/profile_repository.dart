import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/router/app_router.dart';

import '../data_provider/profile_data_provider.dart';
import '../model/user_model.dart';

class ProfileRepository {
  final IProfileDataProvider profileDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  ProfileRepository({
    required this.profileDataProvider,
    required this.localStorageDataProvider,
  });

  Future<UserModel> getProfile(int userId) {
    return profileDataProvider.getProfile(
      userId,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  Future<UserModel> signIn(Map<String, String> json) async {
    final response = await profileDataProvider.signIn(json);

    final token = response.data['access'];
    await localStorageDataProvider.setString(
      LocalStorageKeys.authToken,
      token,
    );
    print("Токен сохранен: $token");
    print(response.headers);

    var setCookieHeader = response.headers['set-cookie'];
    String? csrfToken;
    for (var cookie in setCookieHeader!) {
      List<String> parts = cookie.split(';');

      for (var part in parts) {
        if (part.trim().startsWith('csrftoken=')) {
          csrfToken = part.split('=')[1];
          break;
        }
      }
    }
    print(csrfToken);
    await localStorageDataProvider.setString(
      LocalStorageKeys.csrfToken,
      csrfToken ?? "",
    );

    localStorageDataProvider.setBool(LocalStorageKeys.isAuthenticated, true);

    var response2 = await profileDataProvider.checkAuth(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
    localStorageDataProvider.setInt(
      LocalStorageKeys.userId,
      response2.data['user_id'],
    );
    localStorageDataProvider.setString(
      LocalStorageKeys.userName,
      response2.data['user'],
    );
    appNotifier.signIn();
    print("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR");
    var user = await getProfile(response2.data['user_id']);
    return user;
  }

  Future<UserModel> signUp(Map<String, String> json) async {
    await profileDataProvider.signUp(json);
    return signIn(json);
  }

  Future signOut() async {
    await profileDataProvider.signOut(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
    await localStorageDataProvider.clear();
    appNotifier.signOut();
  }
}
