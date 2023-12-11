import 'package:flutter/material.dart';

import '../models/models.dart';

class TrackCardCompact extends StatelessWidget {
  final Track track;

  const TrackCardCompact({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(track.name),
      subtitle: Text(track.artistName),
      leading: Image.network(
        track.imageUrl,
        width: 60,
        height: 60,
      ),
    );
  }
}
