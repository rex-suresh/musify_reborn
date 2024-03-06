import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../widgets/images.dart';
import '../widgets/player/player_controls.dart';
import '../widgets/player/track_progress.dart';

class PlayerScreen extends StatelessWidget {
  final _player = AudioPlayer();

  PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const PlayerScreenFigure(),
              const TrackProgress(),
              PlayerControls(_player),
              const QueueListControl(),
            ],
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
