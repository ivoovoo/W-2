import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/catch_exception.dart';

import '../utils/token_funcs.dart';

class ApiRequester {
  final String url = 'http://45.153.191.237/api/';

  Future<Dio> initDio() async {
    return Dio(
      BaseOptions(
        baseUrl: url,
        responseType: ResponseType.json,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  Future<Response> toGet(String url,
      [Map<String, dynamic>? queryParameters]) async {
    Dio dio = await initDio();
    final token = await getToken(); // Получаем токен из локального хранилища
    print(token);

    try {
      return dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPost(String url, [Object? data]) async {
    Dio dio = await initDio();
    String? csrfToken = await getTokenCSRF();
    String? token = await getToken();

    try {
      return dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            // "Authorization": "Bearer $token",
            // "X-Csrftoken": "$csrfToken",
            // "Cookie": "csrftoken=$csrfToken",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPostFor(String url, [Object? data]) async {
    Dio dio = await initDio();
    String? csrfToken = await getTokenCSRF();
    String? token = await getToken();
    print(token);
    print(csrfToken);

    try {
      return dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
            "X-Csrftoken": "$csrfToken",
            "Cookie": "csrftoken=$csrfToken",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPostForLogout(String url, [Object? data]) async {
    Dio dio = await initDio();
    String? csrfToken = await getTokenCSRF();
    String? token = await getToken();

    try {
      return dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            "X-Csrftoken": "$csrfToken",
            "Authorization": "Bearer $token",
            "Cookie": "csrftoken=$csrfToken",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPut(String url) async {
    Dio dio = await initDio();

    try {
      return dio.put(url);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toDelete(String url) async {
    Dio dio = await initDio();
    String? csrfToken = await getTokenCSRF();
    String? token = await getToken();

    try {
      return dio.delete(
        url,
        options: Options(
          headers: {
            "X-Csrftoken": "$csrfToken",
            "Authorization": "Bearer $token",
            "Cookie": "csrftoken=$csrfToken",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
