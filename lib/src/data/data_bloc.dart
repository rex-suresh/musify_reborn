import 'dart:async';

import 'package:musify_reborn/src/models/models.dart';

class DataBloc {
  final _homePlaylists = StreamController<Iterable<Playlist>>();
  final _homeTracks = StreamController<Iterable<Track>>();
  final _homeAlbums = StreamController<Iterable<Album>>();
  final _homeArtists = StreamController<Iterable<Artist>>();

  StreamSink<Iterable<Playlist>> get homePlaylists => _homePlaylists.sink;
  StreamSink<Iterable<Track>> get homeTracks => _homeTracks.sink;
  StreamSink<Iterable<Album>> get homeAlbums => _homeAlbums.sink;
  StreamSink<Iterable<Artist>> get homeArtists => _homeArtists.sink;

  Stream<Iterable<Playlist>> get homePlaylistsData => _homePlaylists.stream;
  Stream<Iterable<Track>> get homeTracksData => _homeTracks.stream;
  Stream<Iterable<Album>> get homeAlbumsData => _homeAlbums.stream;
  Stream<Iterable<Artist>> get homeArtistsData => _homeArtists.stream;

  dispose() {
    _homePlaylists.close();
    _homeTracks.close();
    _homeAlbums.close();
    _homeArtists.close();
  }
}

final dataBloc = DataBloc();
