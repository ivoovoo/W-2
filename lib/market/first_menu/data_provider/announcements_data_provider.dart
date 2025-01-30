import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/market/first_menu/model/announcement_model.dart';

abstract interface class IAnnouncementDataProvider {
  Future<AnnouncementResponse> getAllAnnouncement(String token);
}

class AnnouncementDataProvider implements IAnnouncementDataProvider {
  ApiRequester apiRequester = ApiRequester();
  @override
  Future<AnnouncementResponse> getAllAnnouncement(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'marketplace/my_ads/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("ANNNNNNNNNNNNNNNNNNNNN result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return AnnouncementResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET ANNNNNNNNNNNNNNNNNNNNNNN $e');

      throw CatchException.convertException(e);
    }
  }
}
