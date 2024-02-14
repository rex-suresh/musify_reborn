import 'package:flutter/material.dart';
import 'package:musify_reborn/src/widgets/images.dart';

import '../../models/models.dart';

class TrackCardCompact extends StatelessWidget {
  final Track track;

  const TrackCardCompact(this.track, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        leading: SizedBox(
          height: 80,
          width: 80,
          child: ImageThumbnail(imageUrl: track.imageUrl),
        ));
  }
}
