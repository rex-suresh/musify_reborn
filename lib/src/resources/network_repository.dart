import '../api/api.dart';
import '../models/models.dart';
import '../resources/cache_data.dart';

class NetworkRepository {
  static Future<T> _fetchBackupStore<T>(
    cacheMethod,
    networkMethod,
    cacheStore,
  ) async {
    // final cachedContent = await cacheMethod();

    // if (cachedContent != null) {
    //   return cachedContent as T;
    // }

    final networkResponseContent =
        await networkMethod() as Iterable<DataParser>;

    // cacheStore(networkResponseContent);
    return networkResponseContent as T;
  }

  static Future<Iterable<Track>> homePageTrax() async {
    return await _fetchBackupStore<Iterable<Track>>(
      CacheData.homePageTrax,
      API.homePageTrax,
      CacheData.storeHomePageTrax,
    );
  }

  static Future<Iterable<Album>> homePageAlbums() async {
    return await _fetchBackupStore<Iterable<Album>>(
      CacheData.homePageAlbums,
      API.homePageAlbums,
      CacheData.storeHomePageAlbums,
    );
  }

  static Future<Iterable<Playlist>> homePagePlaylists() async {
    return await _fetchBackupStore<Iterable<Playlist>>(
      CacheData.homePagePlaylists,
      API.homePagePlaylists,
      CacheData.storeHomePagePlaylists,
    );
  }

  static Future<Iterable<Artist>> homePageArtists() async {
    return await _fetchBackupStore<Iterable<Artist>>(
      CacheData.homePageArtists,
      API.homePageArtists,
      CacheData.storeHomePageArtists,
    );
  }
}
