import 'dart:async';
import 'dart:convert' show jsonDecode;

import 'package:musify_reborn/src/models/models.dart';

Function jsonResultList =
    (String eventData) => jsonDecode(eventData)['result'] as List<dynamic>;

class DataBloc {
  final _homePlaylists = StreamController<String>();
  final _homeTracks = StreamController<String>();
  final _homeAlbums = StreamController<String>();
  final _homeArtists = StreamController<String>();

  StreamSink<String> get homePlaylists => _homePlaylists.sink;
  StreamSink<String> get homeTracks => _homeTracks.sink;
  StreamSink<String> get homeAlbums => _homeAlbums.sink;
  StreamSink<String> get homeArtists => _homeArtists.sink;

  Stream<Iterable<Playlist>> get homePlaylistsData => _homePlaylists.stream.map(
        (eventData) => jsonResultList(eventData).map(
          (item) => Playlist.fromData(item),
        ),
      );
  Stream<Iterable<Track>> get homeTracksData => _homeTracks.stream.map(
        (eventData) => jsonResultList(eventData).map(
          (item) => Track.fromData(item),
        ),
      );
  Stream<Iterable<Album>> get homeAlbumsData => _homeAlbums.stream.map(
        (eventData) => jsonResultList(eventData).map(
          (item) => Album.fromData(item),
        ),
      );
  Stream<Iterable<Artist>> get homeArtistsData => _homeArtists.stream.map(
        (eventData) => jsonResultList(eventData).map(
          (item) => Artist.fromData(item),
        ),
      );

  dispose() {
    _homePlaylists.close();
    _homeTracks.close();
    _homeAlbums.close();
    _homeArtists.close();
  }
}

final dataBloc = DataBloc();
