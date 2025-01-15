import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';

import '../../../core/helpers/catch_exception.dart';

abstract interface class IEditProfileDataProvider {
  Future setBirthday(
    Map<String, String> birthday,
    int userId,
    String token,
    String csrfToken,
  );
}

class EditProfileDataProvider implements IEditProfileDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future setBirthday(
    Map<String, String> birthday,
    int userId,
    String token,
    String csrfToken,
  ) async {
    try {
      Response response = await apiRequester.toPostWithCsrfToken(
        'user/api/$userId/',
        token,
        csrfToken,
        birthday,
      );
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("BIRTHDAY AND AVATAR result== ${response.data}");
        return 0;
      }

      throw response;
    } catch (e) {
      print('ERROR SET BIRTHDAYYYYYYYYYYYYYYYYYYY $e');

      throw CatchException.convertException(e);
    }
  }
}
