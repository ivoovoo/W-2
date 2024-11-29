import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/helpers/api_requester.dart';

// Ключи для хранения данных
const String _userIdKey = 'user_id';
const String _userNameKey = 'user_name';
const String _tokenKey = 'auth_token';
const String _tokenKeyCSRF = 'csrf_token';
const String _authKey = 'isAuthenticated';

Future<void> saveToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_tokenKey, token);
}

Future<String?> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(_tokenKey);
}

Future<void> saveTokenCSRF(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_tokenKeyCSRF, token);
}

Future<String?> getTokenCSRF() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(_tokenKeyCSRF);
}

class AuthCache {
  /// Сохранить состояние авторизации
  static Future<void> setAutShenticated(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_authKey, value);
  }

  /// Получить состояние авторизации
  static Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_authKey) ?? false;
  }

  /// Метод для выхода из аккаунта (удаление состояния аутентификации)
  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authKey); // Удаляет ключ `is_authenticated`
  }
}

Future<void> cacheUserData({
  required int userId,
  required String userName,
}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt(_userIdKey, userId);
  await prefs.setString(_userNameKey, userName);
  print('Данные успешно сохранены в кэш');
}

// Получение пользовательских данных
Future<Map<String, dynamic>> getUserData() async {
  final prefs = await SharedPreferences.getInstance();
  return {
    'user_id': prefs.getInt(_userIdKey),
    'user': prefs.getString(_userNameKey),
  };
}

// Удаление всех данных
Future<void> clearCache() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(_tokenKey);
  await prefs.remove(_userIdKey);
  await prefs.remove(_userNameKey);
  await prefs.remove(_authKey);
  await prefs.remove(_tokenKeyCSRF);
  print('Кэш успешно очищен');
}

class AuthNotifier extends ChangeNotifier {
  ApiRequester apiRequester = ApiRequester();
  bool _isAuthenticated;

  AuthNotifier(this._isAuthenticated);

  bool get isAuthenticated => _isAuthenticated;

  void login() async {
    _isAuthenticated = true;
    await AuthCache.setAutShenticated(true);
    notifyListeners();
  }

  void logout() async {
    Response response = await apiRequester.toPostForLogout('user/api/logout/');
    print('logout statusCode = ${response.statusCode}');
    if (response.statusCode != 205) {
      throw Exception();
    }
    _isAuthenticated = false;
    await clearCache();
    notifyListeners();
  }
}
