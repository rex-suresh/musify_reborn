import 'package:flutter/material.dart';

import '../../models/models.dart';

class TrackCard extends StatelessWidget {
  final Track track;

  const TrackCard({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.network(
            track.imageUrl,
            width: 170,
            height: 170,
          ),
          ListTile(
            title: Text(track.name),
            subtitle: Text(track.artistName),
          ),
        ],
      ),
    );
  }
}
