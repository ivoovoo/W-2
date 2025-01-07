import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';

abstract interface class IAppsDataProvider {
  Future<AppsModel> getApps(String token);

  Future<AppsModel> createApp(
    dynamic json,
    String token,
    String csrfToken,
  );
}

class AppsDataProvider implements IAppsDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<AppsModel> getApps(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'sites/list_sites/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("APPSSSSSSSS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return AppsModel.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET APPSSSSSSSSSSSSSSSSSSSSSS $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future<AppsModel> createApp(
    dynamic json,
    String token,
    String csrfToken,
  ) async {
    try {
      Response response = await apiRequester.toPostWithCsrfToken(
        "sites/create_site/",
        token,
        csrfToken,
        json,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('NEW APP CREATED');
        return await getApps(token);
      } else {
        print('ERRRRRRRRRRRRRROORRRRRRRRRRRRRRR create app');
        throw Exception();
      }
    } catch (e, stackTrace) {
      print('ERRORRR $e');
      print('ERRRRRRRRRRRRRROORRRRRRRRRRRRRRR create app2');
      print('STACK TRACE $stackTrace');
      throw CatchException.convertException(e);
    }
  }
}
