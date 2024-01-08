import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

import '../images.dart';
import '../../models/models.dart';

class TrackCard extends StatelessWidget {
  static double size = 160;
  final Track track;

  const TrackCard(this.track, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size,
              width: size,
              child: ImageThumbnail(imageUrl: track.imageUrl),
            ),
            TitlePlusSub(
              title: track.name,
              subTitle: track.artistName,
              hPad: 12,
            ),
          ],
        ),
      ),
    );
  }
}
