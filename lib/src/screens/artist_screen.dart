import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../models/models.dart';

class ArtistScreen extends StatelessWidget {
  final Artist artist;

  const ArtistScreen({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: SubScreenTitle(title: artist.name),
      ),
    );
  }
}
