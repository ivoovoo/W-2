import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/market/create_advertisement/models/category_model.dart';
import 'package:social_network/market/create_advertisement/models/category_model2.dart';

abstract interface class ICategoriesDataProvider {
  Future<CategoryResponse> getCategories(String token);

  Future<CategoryResponse2> getSubCategories(String token, int idMainCategory);
}

class CategoriesDataProvider implements ICategoriesDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<CategoryResponse> getCategories(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'marketplace/main_categories/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("CATEGORIES result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return CategoryResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET CATEGORIES $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future<CategoryResponse2> getSubCategories(
      String token, int idMainCategory) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'marketplace/detail_main_category/$idMainCategory/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("CATEGORIES2 result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return CategoryResponse2.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET CATEGORIES2 $e');

      throw CatchException.convertException(e);
    }
  }
}
