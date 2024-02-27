import 'package:flutter/material.dart';

import '../../resources/network_repository.dart';
import '../../widgets/card/album_card.dart';
import '../../widgets/card/artist_card.dart';
import '../../widgets/card/playlist_card.dart';
import '../../models/models.dart';
import '../card/track_card.dart';
import 'scrollable_list.dart';

dataListOf(AsyncSnapshot<dynamic> snapshot) =>
    (snapshot.hasData ? snapshot.data : []) as Iterable;

class TopTracks extends StatefulWidget {
  const TopTracks({super.key});

  @override
  State<TopTracks> createState() => _TopTracksState();
}

class _TopTracksState extends State<TopTracks> {
  Future<Iterable<Track>> trackFuture = NetworkRepository.homePageTrax();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: trackFuture,
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

class TopPlaylists extends StatefulWidget {
  const TopPlaylists({super.key});

  @override
  State<TopPlaylists> createState() => _TopPlaylistsState();
}

class _TopPlaylistsState extends State<TopPlaylists> {
  Future<Iterable<Playlist>> playListFuture =
      NetworkRepository.homePagePlaylists();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: playListFuture,
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

class TopAlbums extends StatefulWidget {
  const TopAlbums({super.key});

  @override
  State<TopAlbums> createState() => _TopAlbumsState();
}

class _TopAlbumsState extends State<TopAlbums> {
  Future<Iterable<Album>> albumFuture = NetworkRepository.homePageAlbums();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: albumFuture,
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

class TopArtists extends StatefulWidget {
  const TopArtists({super.key});

  @override
  State<TopArtists> createState() => _TopArtistsState();
}

class _TopArtistsState extends State<TopArtists> {
  Future<Iterable<Artist>> artistFuture = NetworkRepository.homePageArtists();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: artistFuture,
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
