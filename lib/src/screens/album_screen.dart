import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';
import '../widgets/images.dart';
import '../widgets/lists/other_screen_lists.dart';

class AlbumScreen extends StatelessWidget {
  final Album album;

  const AlbumScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: SubScreenTitle(title: album.name),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          AlbumScreenImage(
            imageUrl: album.imageUrl,
          ),
          AlbumTrackDiscography(
            albumId: album.id,
          )
        ],
      ),
    );
  }
}
