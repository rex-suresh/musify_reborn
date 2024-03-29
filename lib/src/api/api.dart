import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../api/utils.dart';
import '../models/models.dart';
import 'routes.dart';

class API {
  static Future<String> _get(Uri url) async {
    var response = await http.get(url);
    if (response.statusCode != 200) {
      if (kDebugMode) {
        debugPrint("An error occurred 💔, ${response.body}");
      }
      throw Error();
    }

    return response.body;
  }

  static Future<String> base() async => _get(RequestRoutes.base);

  static Future<Iterable<Track>> homePageTrax() async {
    final data = await _get(RequestRoutes.homeTracks);

    return jsonResultList(data).map((item) => Track.fromData(item));
  }

  static Future<Iterable<Album>> homePageAlbums() async {
    final data = await _get(RequestRoutes.homeAlbums);

    return jsonResultList(data).map((item) => Album.fromData(item));
  }

  static Future<Iterable<Playlist>> homePagePlaylists() async {
    final data = await _get(RequestRoutes.homePlaylists);

    return jsonResultList(data).map((item) => Playlist.fromData(item));
  }

  static Future<Iterable<Artist>> homePageArtists() async {
    final data = await _get(RequestRoutes.homeArtists);

    return jsonResultList(data).map((item) => Artist.fromData(item));
  }

  static Future<Iterable<Track>> albumTracks(albumId) async {
    final data = await _get(albumTracksRoute(albumId));

    return jsonResultList(data).map((item) => Track.fromData(item));
  }

  static Future<Iterable<Track>> playlistTracks(playlistId) async {
    final data = await _get(playlistTracksRoute(playlistId));

    return jsonResultList(data).map((item) => Track.fromData(item));
  }

  static Future<Iterable<Track>> artistTracks(artistId) async {
    final data = await _get(artistTracksRoute(artistId));

    return jsonResultList(data).map((item) => Track.fromData(item));
  }

  static Future<Iterable<Album>> artistAlbums(artistId) async {
    final data = await _get(artistAlbumsRoute(artistId));

    return jsonResultList(data).map((item) => Album.fromData(item));
  }
}
