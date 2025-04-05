import 'package:flutter/material.dart';

import 'main_navigation_bar.dart';
import 'screens/choose_topic_screen.dart';
import 'screens/day_album_screen.dart';
import 'screens/day_audio_player_screen.dart';
import 'screens/meditate_screen.dart';
import 'screens/night_album_screen.dart';
import 'screens/night_audio_player_screen.dart';
import 'screens/reminder_screen.dart';
import 'screens/sleep_albums_screen.dart';
import 'screens/sleep_screen.dart';
import 'screens/home_screen.dart';




class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigationBarScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/chooseTopic': (context) => const ChooseTopicScreen(),
        '/chooseTopic/reminderScreen': (context) => const ReminderScreen(),
        '/sleepScreen': (context) => const SleepScreen(),
        '/sleepAlbums': (context) => const SleepAlbumScreen(),
        '/nightAlbum': (context) => const NightAlbumScreen(),
        '/nightAudioPlayer': (context) => const NightAudioPlayerScreen(),
        '/meditateScreen': (context) => const MeditateScreen(),
        '/dayAlbum': (context) => const DayAlbumScreen(),
        '/dayAudioPlayer': (context) => const DayAudioPlayerScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
