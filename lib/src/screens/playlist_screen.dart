import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';
import '../widgets/images.dart';
import '../widgets/lists/other_screen_lists.dart';
import '../widgets/player/queue_controls.dart';

class PlaylistScreen extends StatelessWidget {
  final Playlist playlist;

  const PlaylistScreen({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    final screenContents = [
      PlaylistScreenImage(imageUrl: playlist.imageUrl, tag: playlist.id),
      const QueueControlsTwin(),
      PlaylistTrackDiscography(
        playlistId: playlist.id,
      )
    ];

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            subScreenTitleOf(playlist.name),
            SliverList.list(
              children: screenContents,
            ),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
