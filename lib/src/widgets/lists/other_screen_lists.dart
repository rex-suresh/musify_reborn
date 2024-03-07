import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../resources/network_repository.dart';
import '../card/album_card.dart';
import '../card/track_card_compact.dart';
import '../player/queue_controls.dart';
import 'scrollable_list.dart';

dataListOf(AsyncSnapshot<dynamic> snapshot) =>
    (snapshot.hasData ? snapshot.data : []) as Iterable;

class AlbumTrackDiscography extends StatelessWidget {
  final String albumId;

  const AlbumTrackDiscography({super.key, required this.albumId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.albumTracks(albumId),
      builder: (context, snapshot) {
        final tracksData = dataListOf(snapshot) as List<Track>;

        return Column(
          children: [
            // QueueControlsTwin(tracksData),
            CrossList(
              data: tracksData,
              listTitle: "Tracks",
              widgetBuilder: (item) => TrackCardCompact(item as Track),
            )
          ],
        );
      },
    );
  }
}

class PlaylistTrackDiscography extends StatelessWidget {
  final String playlistId;

  const PlaylistTrackDiscography({super.key, required this.playlistId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.playlistTracks(playlistId),
      builder: (context, snapshot) {
        final Iterable<dynamic> tracksData = dataListOf(snapshot);

        return Column(
          children: [
            QueueControlsTwin(tracksData),
            CrossList(
              data: tracksData,
              listTitle: "Tracks",
              widgetBuilder: (item) => TrackCardCompact(item as Track),
              gap: 8,
            )
          ],
        );
      },
    );
  }
}

class ArtistTrackDiscography extends StatelessWidget {
  final String artistId;

  const ArtistTrackDiscography({super.key, required this.artistId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.artistTracks(artistId),
      builder: (context, snapshot) {
        return CrossList(
          data: dataListOf(snapshot),
          listTitle: "Discography",
          widgetBuilder: (item) => TrackCardCompact(item as Track),
          gap: 8,
        );
      },
    );
  }
}

class ArtistAlbumDiscography extends StatelessWidget {
  final String artistId;

  const ArtistAlbumDiscography({super.key, required this.artistId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.artistAlbums(artistId),
      builder: (context, snapshot) {
        return MainScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Top Records",
          widgetBuilder: (item) => AlbumCard(item as Album),
          listHeight: 240,
          gap: 8,
        );
      },
    );
  }
}
