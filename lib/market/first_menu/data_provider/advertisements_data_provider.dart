import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';

abstract interface class IAdvertisementDataProvider {
  Future<AdvertisementResponse> getAllAdvertisements(String token);
}

class AdvertisementDataProvider implements IAdvertisementDataProvider {
  ApiRequester apiRequester = ApiRequester();
  @override
  Future<AdvertisementResponse> getAllAdvertisements(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'marketplace/my_ads/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("ADDDDDDDDDDDDDDDDDDS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return AdvertisementResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET ADDDDDDDDDDDDDDDDDDDS $e');

      throw CatchException.convertException(e);
    }
  }
}
