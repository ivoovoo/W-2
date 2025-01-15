import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/features/site_categories/model/site_categories_model.dart';

import '../../../core/helpers/catch_exception.dart';

abstract interface class ISiteCategoriesDataProvider {
  Future<SiteCategoriesResponse> getAllSiteCategories(String token);
}

class SiteCategoriesDataProvider implements ISiteCategoriesDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<SiteCategoriesResponse> getAllSiteCategories(String token) async {
    try {
      Response response = await apiRequester.toGet(
        'sites/site_categories/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("SiteCategories result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return SiteCategoriesResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET SiteCategories $e');

      throw CatchException.convertException(e);
    }
  }
}
