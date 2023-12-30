import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';
import '../widgets/top_track_list.dart';

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
      body: const PaddedBody(
        child: Column(
          children: [TopTrackList()],
        ),
      ),
      extendBody: true,
    );
  }
}
