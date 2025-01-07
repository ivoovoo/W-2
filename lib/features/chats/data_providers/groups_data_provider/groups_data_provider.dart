import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';

import '../../models/groups_model/groups_model.dart';

abstract interface class IGroupsDataProvider {
  Future<GroupsModel> getGroups(String token);

  Future<GroupsModel> createGroupChat(
    dynamic json,
    String token,
    String csrfToken,
  );
}

class GroupsDataProvider implements IGroupsDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<GroupsModel> getGroups(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'chat/group_rooms/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("GROUPS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return GroupsModel.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET GROUPSSSSSSSSSSSSSSSSSSSSSS $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future<GroupsModel> createGroupChat(
    dynamic json,
    String token,
    String csrfToken,
  ) async {
    Response response = await apiRequester.toPostWithCsrfToken(
      "chat/api/create_room_group/",
      token,
      csrfToken,
      json,
    );
    log("${response.statusCode}");
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('GROUP CHAT CREATED');
      return await getGroups(token);
    } else {
      throw Exception();
    }
  }
}
