import 'package:flutter/material.dart';
import 'package:musify_reborn/src/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  static ThemeData theme = ThemeData.dark(useMaterial3: true);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const HomeScreen(),
    );
  }
}

void main() => runApp(const MyApp());
