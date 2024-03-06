import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../misc/icon.dart';

class PlayerControls extends StatelessWidget {
  final AudioPlayer player;

  const PlayerControls(this.player, {super.key});

  @override
  Widget build(BuildContext context) {
    final isPlaying = player.playing;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              player.seekToPrevious();
            },
            icon: const PlayerControlIcons(Icons.skip_previous_rounded),
          ),
          IconButton(
            onPressed: () {
              isPlaying ? player.pause() : player.play();
            },
            icon: PlayerControlIcons(
              player.playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              player.seekToNext();
            },
            icon: const PlayerControlIcons(Icons.skip_next_rounded),
          ),
        ],
      ),
    );
  }
}
