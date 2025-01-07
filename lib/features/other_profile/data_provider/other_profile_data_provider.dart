import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';

import '../../../core/helpers/catch_exception.dart';
import '../../profile/model/user_model.dart';

abstract interface class IOtherProfileDataProvider {
  Future<UserModel> getOtherProfile(
    int userId,
    String token,
  );

  Future<String> subscribe(
    int userId,
    String token,
    String csrfToken,
  );

  Future<String> unsubscribe(
    int userId,
    String token,
    String csrfToken,
  );
}

class OtherProfileDataProvider implements IOtherProfileDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<UserModel> getOtherProfile(
    int userId,
    String token,
  ) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'user/api/$userId/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("OTHER PROFILE result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return UserModel.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET OTHER PROFILEEEEEEEEEEEEEEEEEEEEEE $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future<String> subscribe(
    int userId,
    String token,
    String csrfToken,
  ) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toPostWithCsrfToken(
        'user/api/subscription/$userId/',
        token,
        csrfToken,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("OTHER PROFILE SUBSCRIPTION result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return response.data['status'];
        } else {
          throw Exception('Invalid response data');
        }
      } else if (response.statusCode != 200) {
        return response.data['error'];
      }

      throw response;
    } catch (e) {
      print('ERROR SUBSCRIPTION OTHER PROFILEEEEEEEEEEEEEEEEEEEEEE $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future<String> unsubscribe(
    int userId,
    String token,
    String csrfToken,
  ) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toDelete(
        'user/api/subscription/$userId/',
        token,
        csrfToken,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("OTHER PROFILE UNSUBSCRIPTION result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return response.data['status'];
        } else {
          throw Exception('Invalid response data');
        }
      } else if (response.statusCode != 200) {
        return response.data['error'];
      }

      throw response;
    } catch (e) {
      print('ERROR UNSUBSCRIPTION OTHER PROFILEEEEEEEEEEEEEEEEEEEEEE $e');

      throw CatchException.convertException(e);
    }
  }
}
