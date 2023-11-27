import 'package:flutter/material.dart';

import '../screens/main_screen.dart';

class Musify extends StatelessWidget {
  const Musify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(splashFactory: NoSplash.splashFactory),
      home: const SafeArea(child: MainScreen()),
    );
  }
}
