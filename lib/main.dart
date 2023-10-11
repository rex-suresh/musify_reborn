import 'package:flutter/material.dart';
import 'package:musify_reborn/src/app/main_screen.dart';
import 'package:musify_reborn/src/screens/player_screen.dart';
import 'package:musify_reborn/src/screens/search_screen.dart';

class MyApp extends StatelessWidget {
  static ThemeData theme = ThemeData.dark(useMaterial3: true);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MainScreen(),
        '/search': (context) => const SearchScreen(),
        '/player': (context) => const PlayerScreen(),
      },
      theme: theme,
      home: const MainScreen(),
    );
  }
}
