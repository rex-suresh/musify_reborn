import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';

class PlaylistScreen extends StatelessWidget {
  final Playlist playlist;

  const PlaylistScreen({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: SubScreenTitle(title: playlist.name),
      ),
    );
  }
}
