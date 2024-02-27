import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../widgets/lists/home_screen_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screenContents = [
      const TopPlaylists(),
      const TopTracks(),
      const TopAlbums(),
      const TopArtists(),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          screenTitle("Home"),
          SliverList.list(
            addAutomaticKeepAlives: true,
            addRepaintBoundaries: true,
            children: screenContents,
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
