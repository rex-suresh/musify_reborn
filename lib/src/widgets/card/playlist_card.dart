import 'package:flutter/material.dart';

import '../../models/models.dart';

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;

  const PlaylistCard(this.playlist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.network(
            playlist.imageUrl,
            width: 250,
            height: 170,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(playlist.name),
            subtitle: Text(playlist.description),
            isThreeLine: true,
          ),
        ],
      ),
    );
  }
}
