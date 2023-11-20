import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../../src/blocs/padded_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Playlists
    // Tracks
    // Albums
    // Artists

    return Scaffold(
      appBar: screenTitle(
          "Home"), // fn cuz type issue need to know how to solve this
      body: const PaddedBody(child: Text("Hey mom! I'm home")),
      extendBody: true,
    );
  }
}
