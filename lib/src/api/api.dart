import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:musify_reborn/src/api/routes.dart';

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

  static Future<String> homePageTrax() async => _get(RequestRoutes.homeTracks);
  static Future<String> homePageAlbums() async =>
      _get(RequestRoutes.homeAlbums);
  static Future<String> homePagePlaylists() async =>
      _get(RequestRoutes.homePlaylists);
  static Future<String> homePageArtists() async =>
      _get(RequestRoutes.homePlaylists);
}
