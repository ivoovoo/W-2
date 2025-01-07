import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/catch_exception.dart';

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

  Future<Response> toGet(String url, String? token,
      [Map<String, dynamic>? queryParameters]) async {
    Dio dio = await initDio();
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

  Future<Response> toGetUnAuthorized(
    String url,
    Map<String, dynamic> queryParameters,
  ) async {
    Dio dio = await initDio();
    var queryParams = queryParameters.isEmpty ? null : queryParameters;
    print(queryParams);
    try {
      return dio.get(
        url,
        queryParameters: queryParams,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPost(String url, [Object? data]) async {
    Dio dio = await initDio();

    try {
      return dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toPostWithCsrfToken(
      String url, String? token, String? csrfToken,
      [Object? data]) async {
    Dio dio = await initDio();
    print('AUTH TOKENNNNNNNNNNNNNNNNNNNNN');
    print(token);
    print('CSRF TOKENNNNNNNNNNNNNNNNNNNN');
    print(csrfToken);

    try {
      return dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            // "Content-Type": "application/json",
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

  Future<Response> toPut(String url) async {
    Dio dio = await initDio();

    try {
      return dio.put(url);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<Response> toDelete(
    String url,
    String token,
    String csrfToken,
  ) async {
    Dio dio = await initDio();
    print(token);
    print(csrfToken);

    try {
      return dio.delete(
        url,
        options: Options(
          headers: {
            "X-Csrftoken": csrfToken,
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
