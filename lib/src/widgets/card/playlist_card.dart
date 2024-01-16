import 'package:flutter/material.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../images.dart';

class PlaylistCard extends StatelessWidget {
  static double size = 240;
  final Playlist playlist;

  const PlaylistCard(this.playlist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            SizedBox(
              width: size,
              height: size,
              child: ImageThumbnail(imageUrl: playlist.imageUrl),
            ),
            DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    colors: [
                      Colors.transparent,
                      Colors.black87,
                      Colors.black,
                    ],
                  ),
                ),
                child: TitlePlusDescription(
                  title: playlist.name,
                  description: playlist.description,
                  hPad: 8,
                ))
          ],
        ),
      ),
    );
  }
}
