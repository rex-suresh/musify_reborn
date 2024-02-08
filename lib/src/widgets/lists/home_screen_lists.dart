import 'package:flutter/material.dart';

import '../../api/api.dart';
import '../../widgets/card/album_card.dart';
import '../../widgets/card/artist_card.dart';
import '../../widgets/card/playlist_card.dart';
import '../../models/models.dart';
import '../card/track_card.dart';
import 'scrollable_list.dart';

dataListOf(AsyncSnapshot<dynamic> snapshot) =>
    (snapshot.hasData ? snapshot.data : []) as Iterable;

class TopTracks extends StatelessWidget {
  const TopTracks({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.homePageTrax(),
      builder: (context, snapshot) {
        return MainScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Fresh hits",
          widgetBuilder: (item) => TrackCard(item as Track),
          listHeight: 240,
        );
      },
    );
  }
}

class TopPlaylists extends StatelessWidget {
  const TopPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.homePagePlaylists(),
      builder: (context, snapshot) {
        return MainScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Top Playlists",
          widgetBuilder: (item) => PlaylistCard(item as Playlist),
          listHeight: 240,
        );
      },
    );
  }
}

class TopAlbums extends StatelessWidget {
  const TopAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.homePageAlbums(),
      builder: (context, snapshot) {
        return MainScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Top Albums",
          widgetBuilder: (item) => AlbumCard(item as Album),
          listHeight: 240,
        );
      },
    );
  }
}

class TopArtists extends StatelessWidget {
  const TopArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.homePageArtists(),
      builder: (context, snapshot) {
        return MainScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Top Artists",
          widgetBuilder: (item) => ArtistCard(item as Artist),
          listHeight: 200,
        );
      },
    );
  }
}
