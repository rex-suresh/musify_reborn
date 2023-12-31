import 'dart:convert' show jsonDecode;
import 'package:flutter/material.dart';

import 'package:musify_reborn/src/models/models.dart';
import 'package:musify_reborn/src/widgets/card/track_card.dart';

class TopTrackList extends StatelessWidget {
  const TopTrackList({super.key});

  @override
  Widget build(BuildContext context) {
    var jsonData = '''
{
  "tracks": [
    {
      "id": "tra.58367570",
      "name": "Boot Scootin' Boogie",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.58367555/images/500x500.jpg",
      "playbackSeconds": 198,
      "album": {
        "name": "The Essential Brooks & Dunn",
        "id": "alb.58367555"
      },
      "artist": {
        "name": "Brooks & Dunn",
        "id": "art.4772"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/5/5/8/9/7/2303079855.mp3"
    },
    {
      "id": "tra.293613964",
      "name": "Pour Some Sugar On Me (Remastered 2017)",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.293613956/images/500x500.jpg",
      "playbackSeconds": 267,
      "album": {
        "name": "Hysteria (Super Deluxe)",
        "id": "alb.293613956"
      },
      "artist": {
        "name": "Def Leppard",
        "id": "art.2462"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/0/6/2/1/1/2313711260.mp3"
    },
    {
      "id": "tra.2532691",
      "name": "Man in the Box",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.301680/images/500x500.jpg",
      "playbackSeconds": 287,
      "album": {
        "name": "Greatest Hits",
        "id": "alb.301680"
      },
      "artist": {
        "name": "Alice in Chains",
        "id": "art.413"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/5/6/4/0/2/2299420465.mp3"
    },
    {
      "id": "tra.455418328",
      "name": "I Won't Back Down",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.455418315/images/500x500.jpg",
      "playbackSeconds": 176,
      "album": {
        "name": "The Best Of Everything - The Definitive Career Spanning Hits Collection 1976-2016",
        "id": "alb.455418315"
      },
      "artist": {
        "name": "Tom Petty",
        "id": "art.44056"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/5/8/1/4/0/2066504185.mp3"
    },
    {
      "id": "tra.276375636",
      "name": "Just like Heaven",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.276375623/images/500x500.jpg",
      "playbackSeconds": 212,
      "album": {
        "name": "Greatest Hits",
        "id": "alb.276375623"
      },
      "artist": {
        "name": "The Cure",
        "id": "art.1179"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/2/2/5/4/6/2626164522.mp3"
    },
    {
      "id": "tra.1949981",
      "name": "Gypsy",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.225964/images/500x500.jpg",
      "playbackSeconds": 265,
      "album": {
        "name": "Greatest Hits",
        "id": "alb.225964"
      },
      "artist": {
        "name": "Fleetwood Mac",
        "id": "art.2999"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/2/8/7/1/3/1403531782.mp3"
    },
    {
      "id": "tra.139380634",
      "name": "I Wanna Dance with Somebody (Who Loves Me)",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.139380630/images/500x500.jpg",
      "playbackSeconds": 290,
      "album": {
        "name": "80 Totally 80s Hits",
        "id": "alb.139380630"
      },
      "artist": {
        "name": "Whitney Houston",
        "id": "art.789"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/5/3/6/7/2/1377327635.mp3"
    },
    {
      "id": "tra.732635544",
      "name": "Wanted Dead Or Alive",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.732635513/images/500x500.jpg",
      "playbackSeconds": 308,
      "album": {
        "name": "Rockeando el año nuevo",
        "id": "alb.732635513"
      },
      "artist": {
        "name": "Bon Jovi",
        "id": "art.3939"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/1/8/3/9/5/2731759381.mp3"
    },
    {
      "id": "tra.2054009",
      "name": "Take on Me",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.242712/images/500x500.jpg",
      "playbackSeconds": 225,
      "album": {
        "name": "Hunting High and Low",
        "id": "alb.242712"
      },
      "artist": {
        "name": "a-ha",
        "id": "art.3826"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/5/3/0/6/0/1283406035.mp3"
    },
    {
      "id": "tra.1949976",
      "name": "Rhiannon",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.225964/images/500x500.jpg",
      "playbackSeconds": 252,
      "album": {
        "name": "Greatest Hits",
        "id": "alb.225964"
      },
      "artist": {
        "name": "Fleetwood Mac",
        "id": "art.2999"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/3/7/6/1/3/1403531673.mp3"
    },
    {
      "id": "tra.318336994",
      "name": "Welcome To The Jungle",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.318336993/images/500x500.jpg",
      "playbackSeconds": 273,
      "album": {
        "name": "Appetite For Destruction (Super Deluxe Edition)",
        "id": "alb.318336993"
      },
      "artist": {
        "name": "Guns N' Roses",
        "id": "art.38450"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/4/7/2/5/8/1434685274.mp3"
    },
    {
      "id": "tra.730061354",
      "name": "Everybody Wants To Rule The World",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.730061330/images/500x500.jpg",
      "playbackSeconds": 253,
      "album": {
        "name": "This is Rock Hits",
        "id": "alb.730061330"
      },
      "artist": {
        "name": "Tears for Fears",
        "id": "art.66640"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/8/3/1/8/5/2726758138.mp3"
    },
    {
      "id": "tra.966976",
      "name": "Take Me Home Tonight",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.117280/images/500x500.jpg",
      "playbackSeconds": 211,
      "album": {
        "name": "Can't Hold Back",
        "id": "alb.117280"
      },
      "artist": {
        "name": "Eddie Money",
        "id": "art.3512"
      },
      "song": "https://listen.hs.llnwd.net/g1/prvw/5/7/7/2/5/996852775.mp3"
    },
    {
      "id": "tra.56935692",
      "name": "Running Up That Hill (A Deal With God)",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.56935691/images/500x500.jpg",
      "playbackSeconds": 298,
      "album": {
        "name": "Hounds Of Love",
        "id": "alb.56935691"
      },
      "artist": {
        "name": "Kate Bush",
        "id": "art.2069"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/0/0/3/8/9/1629298300.mp3"
    },
    {
      "id": "tra.413641474",
      "name": "The Boys Of Summer",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.413640904/images/500x500.jpg",
      "playbackSeconds": 288,
      "album": {
        "name": "Retro Road Trip",
        "id": "alb.413640904"
      },
      "artist": {
        "name": "Don Henley",
        "id": "art.3795"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/3/1/1/1/9/2489591113.mp3"
    },
    {
      "id": "tra.318336999",
      "name": "Paradise City",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.318336993/images/500x500.jpg",
      "playbackSeconds": 405,
      "album": {
        "name": "Appetite For Destruction (Super Deluxe Edition)",
        "id": "alb.318336993"
      },
      "artist": {
        "name": "Guns N' Roses",
        "id": "art.38450"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/2/6/8/5/6/1433065862.mp3"
    },
    {
      "id": "tra.13306176",
      "name": "When Doves Cry",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.13305047/images/500x500.jpg",
      "playbackSeconds": 353,
      "album": {
        "name": "Purple Rain",
        "id": "alb.13305047"
      },
      "artist": {
        "name": "Prince",
        "id": "art.44063"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/6/4/0/5/6/1319265046.mp3"
    },
    {
      "id": "tra.1949978",
      "name": "Go Your Own Way",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.225964/images/500x500.jpg",
      "playbackSeconds": 218,
      "album": {
        "name": "Greatest Hits",
        "id": "alb.225964"
      },
      "artist": {
        "name": "Fleetwood Mac",
        "id": "art.2999"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/2/7/6/1/3/1403531672.mp3"
    },
    {
      "id": "tra.236050316",
      "name": "I'm Still Standing",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.236050255/images/500x500.jpg",
      "playbackSeconds": 182,
      "album": {
        "name": "To Be Continued...",
        "id": "alb.236050255"
      },
      "artist": {
        "name": "Elton John",
        "id": "art.3231"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/8/4/3/8/5/2129858348.mp3"
    },
    {
      "id": "tra.324152023",
      "name": "Livin' On A Prayer",
      "image": "https://api.napster.com/imageserver/v2/albums/alb.324152022/images/500x500.jpg",
      "playbackSeconds": 251,
      "album": {
        "name": "Cross Road",
        "id": "alb.324152022"
      },
      "artist": {
        "name": "Bon Jovi",
        "id": "art.3939"
      },
      "song": "https://listen.hs.llnwd.net/g3/prvw/0/8/0/6/9/1432496080.mp3"
    }
  ],
  "type": "tracks-list"
}
''';

    var data = jsonDecode(jsonData) as Map<String, dynamic>;
    var tracksList = data['tracks'] as List<dynamic>;
    var tracks = tracksList.map((e) => Track.fromData(e));

    return SizedBox(
      height: 252,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [...tracks.map((track) => TrackCard(track: track))],
      ),
    );
  }
}
