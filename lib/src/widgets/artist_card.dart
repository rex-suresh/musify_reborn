import 'package:flutter/material.dart';

import '../models/models.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;

  const ArtistCard({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            artist.imageUrl,
            width: 160,
            height: 160,
          ),
          ListTile(
            title: Text(artist.name),
          ),
        ],
      ),
    );
  }
}
