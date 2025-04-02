import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:openai_dart/openai_dart.dart';
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
  final String _baseUrl = "https://openrouter.ai/api/v1";

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
      debugPrint('Sending request to Qwen API...');

      final response = await Dio().post(
        _baseUrl,
        options: Options(headers: headers),
        data: body,
      );
      log(response.statusCode.toString());
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {

        final result = response.data['output'][0]['text'];
        print(result);
        debugPrint('Received response from Qwen API');
        return result;
      } else {
        throw Exception("Qwen API error: ${response.statusCode}");
      }
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
  // final openai = OpenAIClient(
  //   apiKey: dotenv.env['OPENAI_API_KEY']!,
  // );
  // Future<void> _chatCompletions(final OpenAIClient client) async {
  //   final res = await client.createChatCompletion(
  //     request: const CreateChatCompletionRequest(
  //       model: ChatCompletionModel.modelId('gpt-4'),
  //       messages: [
  //         ChatCompletionMessage.system(
  //           content: 'You are a helpful assistant.',
  //         ),
  //         ChatCompletionMessage.user(
  //           content: ChatCompletionUserMessageContent.string('Hello!'),
  //         ),
  //       ],
  //       temperature: 0,
  //     ),
  //   );
  //   print(res.choices.first.message.content);
  // }

}