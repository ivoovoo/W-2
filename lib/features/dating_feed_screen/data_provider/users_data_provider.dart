import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/features/dating_feed_screen/models/users_model.dart';

abstract interface class IUsersDataProvider {
  Future<UserListResponse> getUsers([
    String? interest,
    int? age_min,
    int? age_max,
    int? city,
  ]);
}

class UsersDataProvider implements IUsersDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<UserListResponse> getUsers([
    String? interest,
    int? age_min,
    int? age_max,
    int? city,
  ]) async {
    try {
      Map<String, String> interestt =
          interest != null ? {"interests": interest} : {};
      Map<String, int> age_minn = age_min != null ? {"age_min": age_min} : {};
      Map<String, int> age_maxx = age_max != null ? {"age_max": age_max} : {};
      Map<String, int> cityy = city != null ? {"city": city} : {};

      print(interestt);
      print(age_maxx);
      print(age_minn);
      print(cityy);
      print('KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK');
      Response response = await apiRequester.toGetUnAuthorized(
        'user/api/list_user/',
        {...interestt, ...age_maxx, ...age_minn, ...cityy},
      );

      if (response.statusCode == 200) {
        log("USER LISTTTTTTTTTTTTTTTTTTTTTTTTTT result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return UserListResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e, st) {
      print('ERROR GET USERSSSSSSSSSSSSSSSS $e');
      print(st);
      print('TTTTTTTTTTTTTTTTTTTTTTTT');

      throw CatchException.convertException(e);
    }
  }
}
