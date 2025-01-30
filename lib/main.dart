import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/router/app_router.dart';

import 'package:social_network/features/app/initialization/runner.dart';
import 'data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Получить состояние авторизации
  Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(LocalStorageKeys.isAuthenticated) ?? false;
  }

  // Проверяем авторизацию перед запуском приложения
  final issAuthenticated = await isAuthenticated();
  authNotifier = AuthNotifier(issAuthenticated, false);
  return runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Runner();
  }
}
