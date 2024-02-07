abstract class DataParser {
  DataParser.fromData(dynamic _data);
}

class Track implements DataParser {
  late String id;
  late String name;
  late String imageUrl;
  late String trackUrl;
  late int trackLength;
  late String artistName;
  late String albumName;

  Track.fromData(trackData) {
    id = trackData['id'];
    name = trackData['name'];
    imageUrl = trackData['image'];
    trackUrl = trackData['song'];
    trackLength = trackData['playbackSeconds'];
    artistName = trackData['artist']['name'];
    albumName = trackData['album']['name'];
  }
}

class Album implements DataParser {
  late String id;
  late String name;
  late String artistName;
  late String imageUrl;

  Album.fromData(albumData) {
    id = albumData['id'];
    name = albumData['name'];
    imageUrl = albumData['image'];
    artistName = albumData['artist']['name'];
  }
}

class Artist implements DataParser {
  late String id;
  late String name;
  late String imageUrl;

  Artist.fromData(artistData) {
    id = artistData['id'];
    name = artistData['name'];
    imageUrl = artistData['image'];
  }
}

class Playlist implements DataParser {
  late String id;
  late String name;
  late String description;
  late String imageUrl;

  Playlist.fromData(playlistData) {
    id = playlistData['id'];
    name = playlistData['name'];
    imageUrl = playlistData['image'];
    description = playlistData['description'];
  }
}
