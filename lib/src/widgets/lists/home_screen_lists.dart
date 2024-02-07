import 'package:flutter/material.dart';
import 'package:musify_reborn/src/api/api.dart';
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
      data: [...tracks],
      listTitle: "All Time Hits",
      widgetBuilder: (item) => TrackCard(item as Track),
      listHeight: 240,
    );
  }
}

class TopPlaylists extends StatefulWidget {
  const TopPlaylists({super.key});

  @override
  State<TopPlaylists> createState() => _TopPlaylistsState();
}

class _TopPlaylistsState extends State<TopPlaylists> {
  List<Playlist> _data = [];
  final Future<String> _contentRequest = API.homePagePlaylists();

  @override
  void initState() {
    super.initState();
    _contentRequest.then(
      (responseData) {
        if (mounted && _data.isEmpty) {
          final list = (jsonDecode(responseData)['result'] as List<dynamic>)
              .map((item) => Playlist.fromData(item));

          setState(() {
            _data.addAll(list);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainScrollableList(
      data: _data,
      listTitle: "Top Playlists",
      widgetBuilder: (item) => PlaylistCard(item as Playlist),
      listHeight: 240,
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
      data: [...albums],
      listTitle: "Top Albums",
      widgetBuilder: (item) => AlbumCard(item as Album),
      listHeight: 240,
    );
  }
}

class TopArtists extends StatelessWidget {
  const TopArtists({super.key});

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(artistData) as Map<String, dynamic>;
    var artists = (data['artists'] as List<dynamic>).map(
      (e) => Artist.fromData(e),
    );

    return MainScrollableList(
      data: [...artists],
      listTitle: "Top Artists",
      widgetBuilder: (item) => ArtistCard(item as Artist),
      listHeight: 200,
    );
  }
}
