import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

import '../../widgets/image_thumbnail.dart';
import '../../models/models.dart';

class TrackCard extends StatelessWidget {
  final Track track;

  const TrackCard({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: SizedBox(
                height: 156,
                width: 156,
                child: ImageThumbnail(imageUrl: track.imageUrl),
              ),
            ),
            TitlePlusSub(title: track.name, subTitle: track.artistName),
          ],
        ),
      ),
    );
  }
}
