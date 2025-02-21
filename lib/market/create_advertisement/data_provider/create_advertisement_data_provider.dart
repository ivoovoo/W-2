import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';

abstract interface class ICreateAdvertisementDataProvider {
  Future createAdvertisement(
    dynamic data,
    String token,
    String csrfToken,
  );
}

class CreateAdvertisementDataProvider
    implements ICreateAdvertisementDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future createAdvertisement(
    dynamic data,
    String token,
    String csrfToken,
  ) async {
    try {
      log('IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIM');
      Response response = await apiRequester.toPostWithCsrfToken(
        "marketplace/create_my_ad/",
        token,
        csrfToken,
        data,
        "multipart/form-data",
      );
      print(response.statusCode);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return response;
      } else {
        print(response.data);
        print('DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD');
        throw Exception();
      }
    } catch (e) {
      print('ERROR CREATEEEEEEEEEEE ADS $e');

      throw CatchException.convertException(e);
    }
  }
}
