import '../app/env_config.dart';

class RequestRoutes {
  static Uri base = Uri.parse(EnvConfig().apiDomain);

  // Home page specific routes
  static Uri homePlaylists = Uri.parse("${base.toString()}/home/playlists");
  static Uri homeTracks = Uri.parse("${base.toString()}/home/tracks");
  static Uri homeAlbums = Uri.parse("${base.toString()}/home/albums");
  static Uri homeArtists = Uri.parse("${base.toString()}/home/artists");

  // Detail page specific routes
  static Uri playlistDetailBase =
      Uri.parse("${base.toString()}/detail/playlist");
  static Uri albumDetailBase = Uri.parse("${base.toString()}/detail/album");
  static Uri artistTracksBase =
      Uri.parse("${base.toString()}/detail/artist/tracks");
  static Uri artistAlbumBase =
      Uri.parse("${base.toString()}/detail/artist/albums");

  // Search page specific routes
  static Uri searchBase = Uri.parse("${base.toString()}/search");
}

Uri albumTracksRoute(String albumId) =>
    Uri.parse("${RequestRoutes.albumDetailBase.toString()}/$albumId");

Uri playlistTracksRoute(String playlistId) =>
    Uri.parse("${RequestRoutes.playlistDetailBase.toString()}/$playlistId");
