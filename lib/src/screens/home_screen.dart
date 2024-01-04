import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';
import '../widgets/lists/top_track_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> screenContents = [
      TopTrackList(), // Playlists
      TopTrackList(), // Tracks
      TopTrackList(), // Albums
      TopTrackList(), // Artists
    ];

    return Scaffold(
      body: PaddedBody(
        hPad: 8,
        child: CustomScrollView(
          slivers: [
            screenTitle("Home"),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => screenContents[index],
                  childCount: screenContents.length),
            ),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
