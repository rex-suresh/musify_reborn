import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';
import '../widgets/lists/home_screen_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> screenContents = [
      TopPlaylists(),
      TopTracks(),
      TopAlbums(),
      TopArtists()
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
                childCount: screenContents.length,
              ),
            ),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
