import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';
import '../widgets/images.dart';
import '../widgets/lists/other_screen_lists.dart';
import '../widgets/player/queue_controls.dart';

class AlbumScreen extends StatelessWidget {
  final Album album;

  const AlbumScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    final screenContents = [
      AlbumScreenImage(
        imageUrl: album.imageUrl,
      ),
      const QueueControlsTwin(),
      AlbumTrackDiscography(
        albumId: album.id,
      )
    ];

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            subScreenTitleOf(album.name),
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
