import 'package:musify_reborn/src/api/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/models.dart';

class CacheData {
  static final _sharedPref = SharedPreferences.getInstance();

  static Future<Iterable<T>?> _queryAndParse<T>(String queryString) async {
    final pref = await _sharedPref;
    final data = pref.getString(queryString);

    if (data != null) {
      return jsonList(data) as Iterable<T>;
    }
    return null;
  }

  static Future<void> _stringifyAndStore<T>(
    String queryString,
    List<DataParser> data,
  ) async {
    final pref = await _sharedPref;
    final stringifiedData = encodeJsonList(data);

    pref.setString(queryString, stringifiedData);
  }

  static Future<Iterable<Track>?> homePageTrax() =>
      _queryAndParse('homePageTrax');

  static Future<Iterable<Album>?> homePageAlbums() =>
      _queryAndParse('homePageAlbums');

  static Future<Iterable<Playlist>?> homePagePlaylists() =>
      _queryAndParse('homePagePlaylists');

  static Future<Iterable<Artist>?> homePageArtists() =>
      _queryAndParse('homePageArtists');

  static Future<void> storeHomePageTrax(data) =>
      _stringifyAndStore('homePageTrax', data);
  static Future<void> storeHomePageAlbums(data) =>
      _stringifyAndStore('homePageAlbums', data);
  static Future<void> storeHomePagePlaylists(data) =>
      _stringifyAndStore('homePagePlaylists', data);
  static Future<void> storeHomePageArtists(data) =>
      _stringifyAndStore('homePageArtists', data);
}
