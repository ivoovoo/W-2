import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/features/profile_page/model/user_model.dart';

import '../../../core/helpers/api_requester.dart';
import '../../../core/helpers/catch_exception.dart';

abstract interface class IProfileDataProvider {
  Future<UserModel> getProfile(int userId);
}

class ProfileDataProvider implements IProfileDataProvider {
  ApiRequester apiRequester = ApiRequester();
  @override
  Future<UserModel> getProfile(int userId) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet('user/api/$userId/');

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
}
