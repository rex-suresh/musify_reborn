import 'package:flutter/material.dart';

import '../../models/models.dart';

class AlbumCard extends StatelessWidget {
  final Album album;

  const AlbumCard({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.network(
            album.imageUrl,
            width: 150,
            height: 150,
          ),
          ListTile(
            title: Text(album.name),
            subtitle: Text(album.artistName),
          ),
        ],
      ),
    );
  }
}
