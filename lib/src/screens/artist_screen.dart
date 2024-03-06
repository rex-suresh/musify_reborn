import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';
import '../widgets/images.dart';
import '../widgets/lists/other_screen_lists.dart';
import '../widgets/player/queue_controls.dart';

class ArtistScreen extends StatelessWidget {
  final Artist artist;

  const ArtistScreen({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            subScreenTitleOf(artist.name),
            SliverList.list(children: [
              ArtistScreenImage(
                imageUrl: artist.imageUrl,
                figureText: artist.name,
              ),
              const QueueControlsSingle(),
              ArtistTrackDiscography(artistId: artist.id),
              ArtistAlbumDiscography(artistId: artist.id),
            ])
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
