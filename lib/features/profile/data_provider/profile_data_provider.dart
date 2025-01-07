import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/features/profile/model/user_model.dart';

import '../../../core/helpers/api_requester.dart';
import '../../../core/helpers/catch_exception.dart';

abstract interface class IProfileDataProvider {
  Future<UserModel> getProfile(
    int userId,
    String token,
  );

  Future signIn(Map<String, String> json);

  Future signUp(Map<String, String> json);

  Future signOut(
    String token,
    String csrfToken,
  );

  Future checkAuth(String token);
}

class ProfileDataProvider implements IProfileDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<UserModel> getProfile(
    int userId,
    String token,
  ) async {
    try {
      Response response = await apiRequester.toGet(
        'user/api/$userId/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("PROFILE result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return UserModel.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET PROFILEEEEEEEEEEEEEEEEEEEEEE $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future signIn(Map<String, String> json) async {
    try {
      Response response = await apiRequester.toPost(
        "user/api/auth/",
        json,
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception();
      }
    } catch (e) {
      print('ERROR SIGN INNNNNNNNNNNNN $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future signUp(Map<String, String> json) async {
    try {
      Response response = await apiRequester.toPost(
        "user/api/create_account/",
        json,
      );
      print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('ACCOUNT CREATED');
        return response;
      } else {
        throw Exception();
      }
    } catch (e) {
      print('ERROR SIGN UPPPPPPPPPPPP $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future signOut(
    String token,
    String csrfToken,
  ) async {
    try {
      Response response = await apiRequester.toPostWithCsrfToken(
        'user/api/logout/',
        token,
        csrfToken,
      );
      print('logout statusCode = ${response.statusCode}');
      if (response.statusCode != 205) {
        throw Exception();
      }

      return response;
    } catch (e) {
      print('ERROR SIGN OUTTTTTTTTTT $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future checkAuth(String token) async {
    try {
      Response response = await apiRequester.toGet(
        "user/api/check_auth/",
        token,
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception();
      }
    } catch (e) {
      print('ERROR $e');

      throw CatchException.convertException(e);
    }
  }
}
