import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/player_queue.dart';
import '../widgets/images.dart';
import '../widgets/player/player_controls.dart';
import '../widgets/player/track_progress.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final queue = Provider.of<PlayerQueue>(context, listen: true);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
            ),
          ),
          SliverList.list(
            addAutomaticKeepAlives: true,
            children: [
              PlayerScreenFigure(queue.currentTrack),
              TrackProgress(queue.player),
              PlayerControls(queue.player),
              const QueueListControl(),
            ],
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
