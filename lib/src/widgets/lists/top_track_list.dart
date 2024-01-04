import 'package:flutter/material.dart';
import 'dart:convert' show jsonDecode;

import '../../models/models.dart';
import '../../widgets/card/track_card.dart';
import '../../widgets/lists/data.dart';

class TopTrackList extends StatelessWidget {
  const TopTrackList({super.key});

  @override
  Widget build(BuildContext context) {
    var jsonData = trackData;

    var data = jsonDecode(jsonData) as Map<String, dynamic>;
    var tracksList = data['tracks'] as List<dynamic>;
    var tracks = tracksList.map((e) => Track.fromData(e));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              "Top tracks",
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        SizedBox(
          height: 252,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [...tracks.map((track) => TrackCard(track: track))],
          ),
        )
      ],
    );
  }
}
