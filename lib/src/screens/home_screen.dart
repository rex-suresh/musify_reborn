import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';
import 'package:musify_reborn/src/widgets/playlist_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScreenTitle(title: 'Home'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [PlaylistCard(), PlaylistCard()],
        )
        // ListWithTitle(title: 'Top Playlists', data: [], listItem: PlatlistCard),
        // Playlists
        // Tracks
        // Albums
        // Artists
      ],
    );
  }
}
