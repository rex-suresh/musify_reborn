import 'package:flutter/material.dart';
import 'package:musify_reborn/src/app/main_screen.dart';

class Musify extends StatelessWidget {
  static ThemeData theme = ThemeData.dark(useMaterial3: true);
  const Musify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const MainScreen(),
    );
  }
}

void main() => runApp(const Musify());
