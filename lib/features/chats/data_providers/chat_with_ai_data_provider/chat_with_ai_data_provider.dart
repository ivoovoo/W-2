import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';

import '../../../../core/helpers/catch_exception.dart';

abstract interface class IChatWithAiDataProvider {
  Future sendMessage({
    required String message,
    required String token,
    required String csrfToken,
  });
}

class ChatWithAiDataProvider implements IChatWithAiDataProvider {
  ApiRequester apiRequester = ApiRequester();

  @override
  Future sendMessage({
    required String message,
    required String token,
    required String csrfToken,
  }) async {
    try {
      Response response = await apiRequester.toPostWithCsrfToken(
        "aichat/chat/",
        token,
        csrfToken,
        {"message": message},
      );
      log('status code of response');
      log(response.statusCode.toString());
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data["response"];
      } else {
        throw Exception();
      }
    } catch (e, stackTrace) {
      print('ERRORRR $e');
      print('STACK TRACE $stackTrace');
      throw CatchException.convertException(e);
    }
  }
}
