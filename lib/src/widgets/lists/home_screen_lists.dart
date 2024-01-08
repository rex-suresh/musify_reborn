import 'package:flutter/material.dart';
import 'package:musify_reborn/src/widgets/card/album_card.dart';
import 'package:musify_reborn/src/widgets/card/artist_card.dart';
import 'package:musify_reborn/src/widgets/card/playlist_card.dart';
import 'dart:convert' show jsonDecode;

import '../../models/models.dart';
import '../../widgets/lists/data.dart';
import '../card/track_card.dart';
import 'scrollable_list.dart';

class TopTracks extends StatelessWidget {
  const TopTracks({super.key});

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(trackData) as Map<String, dynamic>;
    var tracks = (data['tracks'] as List<dynamic>).map(
      (e) => Track.fromData(e),
    );

    return MainScrollableList(
      data: tracks,
      listTitle: "Top Tracks",
      widgetBuilder: (item) => TrackCard(item as Track),
      listHeight: 240,
    );
  }
}

class TopPlaylists extends StatelessWidget {
  const TopPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(playlistData) as Map<String, dynamic>;
    var playlists = (data['playlists'] as List<dynamic>).map(
      (e) => Playlist.fromData(e),
    );

    return MainScrollableList(
      data: playlists,
      listTitle: "Top Playlists",
      widgetBuilder: (item) => PlaylistCard(item as Playlist),
    );
  }
}

class TopAlbums extends StatelessWidget {
  const TopAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(albumData) as Map<String, dynamic>;
    var albums = (data['albums'] as List<dynamic>).map(
      (e) => Album.fromData(e),
    );

    return MainScrollableList(
      data: albums,
      listTitle: "Top Albums",
      widgetBuilder: (item) => AlbumCard(item as Album),
    );
  }
}

class TopArtists extends StatelessWidget {
  const TopArtists({super.key});

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(artistData) as Map<String, dynamic>;
    var albums = (data['artists'] as List<dynamic>).map(
      (e) => Artist.fromData(e),
    );

    return MainScrollableList(
      data: albums,
      listTitle: "Top Artists",
      widgetBuilder: (item) => ArtistCard(item as Artist),
    );
  }
}
