import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/crypto%20app/main%20screens/send_cryplo.dart';
import 'crypto app/main screens/get_crypto.dart';
import 'crypto app/main screens/swap_screen.dart';
import 'crypto app/navigation/main_bar.dart';
import 'data.dart';
import 'features/app/initialization/runner.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Получить состояние авторизации
  Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(LocalStorageKeys.isAuthenticated) ?? false;
  }

  // Проверяем авторизацию перед запуском приложения
  final issAuthenticated = await isAuthenticated();
  appNotifier = AppNotifier(issAuthenticated, false);
  return runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Runner();
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: MainScreenExchange(),
    // );
  }

}
