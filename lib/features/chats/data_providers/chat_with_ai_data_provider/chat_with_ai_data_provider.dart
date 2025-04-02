import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:social_network/core/helpers/api_requester.dart';

import '../../../../core/helpers/catch_exception.dart';

abstract interface class IChatWithAiDataProvider {
  Future sendMessage({
    required String message,
    required String aitoken,
  });
}

// class ChatWithAiDataProvider implements IChatWithAiDataProvider {
//   ApiRequester apiRequester = ApiRequester();
//
//   @override
//   Future sendMessage({
//     required String message,
//     required String token,
//     required String csrfToken,
//   }) async {
//     try {
//       Response response = await apiRequester.toPostWithCsrfToken(
//         "aichat/chat/",
//         token,
//         csrfToken,
//         {"message": message},
//       );
//       log('status code of response');
//       log(response.statusCode.toString());
//       log(response.data.toString());
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return response.data["response"];
//       } else {
//         throw Exception();
//       }
//     } catch (e, stackTrace) {
//       print('ERRORRR $e');
//       print('STACK TRACE $stackTrace');
//       throw CatchException.convertException(e);
//     }
//   }
// }

class ChatWithAiDataProvider implements IChatWithAiDataProvider {
  final String _baseUrl = "https://openrouter.ai/api/v1/chat/completions"; // Пример URL (уточните в документации)

  Future sendMessage({
    required String message,
    required String aitoken,
  }) async {
    try {

      print(aitoken);
      final headers = {
        'Authorization': 'Bearer $aitoken',
        'Content-Type': 'application/json',
      };

      final body = {
        'model': 'qwen/qwq-32b:free',
        "messages": [
          {
            "role": "user",
            "content": message
          }
        ],
      };

      // Вариант 1: Если toPost поддерживает headers и body
      // final Response response = await _apiRequester.toPost(
      //   _baseUrl,
      //   headers,
      //   body,
      // );
      debugPrint('Sending request to Qwen API...');

      // Вариант 2: Использовать Dio напрямую
      final response = await Dio().post(
        _baseUrl,
        options: Options(headers: headers),
        data: body,
      );

      if (response.statusCode == 200) {
        final result = response.data['output'][0]['text'];
        debugPrint('Received response from Qwen API');
        return result;
      } else {
        throw Exception("Qwen API error: ${response.statusCode}");
      }
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}