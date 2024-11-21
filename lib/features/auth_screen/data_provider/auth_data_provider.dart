import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/utils/token_funcs.dart';

abstract interface class IAuthDataProvider {
  Future signIn(Map<String, String> json);

  Future signUp(Map<String, String> json);
}

class AuthDataProvider implements IAuthDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future signIn(Map<String, String> json) async {
    Response response = await apiRequester.toPost(
      "user/api/auth/",
      json,
    );
    if (response.statusCode == 200) {
      final token = response.data['access'];
      print(response.data);
      await saveToken(token); // Сохранение токена
      print("Токен сохранен: $token");
      AuthCache.setAutShenticated(true);
      Response response2 = await apiRequester.toGet("user/api/check_auth/");
      if (response2.statusCode == 200) {
        await cacheUserData(
            userId: response2.data['user_id'],
            userName: response2.data['user']);
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future signUp(Map<String, String> json) async {
    Response response = await apiRequester.toPost(
      "user/api/create_account/",
      json,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('ACCOUNT CREATED');
      await signIn(json);
    } else {
      throw Exception();
    }
  }
}
