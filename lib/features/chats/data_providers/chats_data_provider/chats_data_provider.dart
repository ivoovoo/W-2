import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/helpers/catch_exception.dart';
import 'package:social_network/features/chats/models/chats_model/chat_response_model.dart';

abstract interface class IChatsDataProvider {
  Future<ChatResponse> getChats(String token);

  Future deleteChat(
    int chatId,
    String token,
    String csrfToken,
  );
}

class ChatsDataProvider implements IChatsDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future<ChatResponse> getChats(String token) async {
    try {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      Response response = await apiRequester.toGet(
        'chat/api/chats/',
        token,
      );

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("CHATSSSSSS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return ChatResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET CHATSSSSSSSSSSSSSSSSSSSSSS $e');

      throw CatchException.convertException(e);
    }
  }

  @override
  Future deleteChat(
    int chatId,
    String token,
    String csrfToken,
  ) async {
    try {
      Response response = await apiRequester.toPostWithCsrfToken(
        "chat/chats/$chatId/delete/",
        token,
        csrfToken,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('CHAT DELETED');
        return 0;
      } else {
        print('ERRRRRRRRRRRRRROORRRRRRRRRRRRRRR delete chat');
        throw Exception();
      }
    } catch (e, stackTrace) {
      print('ERRORRR $e');
      print('ERRRRRRRRRRRRRROORRRRRRRRRRRRRRR delete chat2');
      print('STACK TRACE $stackTrace');
      throw CatchException.convertException(e);
    }
  }
}
