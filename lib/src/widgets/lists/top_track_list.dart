import 'package:flutter/material.dart';
import 'dart:convert' show jsonDecode;

import '../../models/models.dart';
import '../../widgets/card/track_card.dart';
import '../../widgets/lists/data.dart';
import 'scrollable_list.dart';

class TopTrackList extends StatelessWidget {
  const TopTrackList({super.key});

  @override
  Widget build(BuildContext context) {
    var jsonData = trackData;

    var data = jsonDecode(jsonData) as Map<String, dynamic>;
    var tracksList = data['tracks'] as List<dynamic>;
    var tracks = tracksList.map((e) => Track.fromData(e));

    return MainScrollableList(
      data: tracks,
      listTitle: "Top Tracks",
      widgetBuilder: (item) => TrackCard(item as Track),
    );
  }
}
