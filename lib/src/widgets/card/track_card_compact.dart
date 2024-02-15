import 'package:flutter/material.dart';
import 'package:musify_reborn/src/widgets/images.dart';

import '../../models/models.dart';

class TrackCardCompact extends StatelessWidget {
  final Track track;

  const TrackCardCompact(this.track, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.hardEdge,
            child: ImageThumbnail(imageUrl: track.imageUrl),
          ),
        ),
        title: Text(
          track.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          track.artistName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
