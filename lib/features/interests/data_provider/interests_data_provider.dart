import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/features/interests/model/interest_model.dart';

import '../../../core/helpers/catch_exception.dart';

abstract interface class IInterestsDataProvider {
  Future<InterestResponse> getAllInterests(String token);
}

class InterestsDataProvider implements IInterestsDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<InterestResponse> getAllInterests(String token) async {
    try {
      Response response = await apiRequester.toGet(
        'user/api/add_interests/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("INTERESTSSS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return InterestResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET INTERESTSSSSSSSSSSSSS $e');

      throw CatchException.convertException(e);
    }
  }
}
