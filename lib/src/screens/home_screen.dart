import 'package:flutter/material.dart';

import '../misc/titles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Playlists
    // Tracks
    // Albums
    // Artists

    return Scaffold(
      appBar: screenTitle("Home"),
      body: const Text("Hey mom! I'm home"),
    );
  }
}
