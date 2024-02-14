import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';

class AlbumScreen extends StatelessWidget {
  final Album album;

  const AlbumScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: SubScreenTitle(title: album.name),
      ),
    );
  }
}
