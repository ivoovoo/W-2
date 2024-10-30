import 'package:dio/dio.dart';

class Api {
  static final _dio = Dio();
  static const String _host = 'http://212.67.15.72';

  static void loginUser() async{
    Response response;
    response = await _dio.post('$_host/login');
    print(response.requestOptions.toString());
  }
}