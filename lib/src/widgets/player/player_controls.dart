import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../misc/icon.dart';
import '../../misc/titles.dart';

class PlayerControls extends StatefulWidget {
  final AudioPlayer _player;

  const PlayerControls(this._player, {super.key});

  @override
  State<PlayerControls> createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isPlaying = widget._player.playing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              widget._player.seekToPrevious();
            },
            icon: const PlayerControlIcons(Icons.skip_previous_rounded),
          ),
          IconButton(
            onPressed: () {
              if (isPlaying) {
                widget._player.pause();
                setState(() {
                  isPlaying = false;
                });
                return;
              }

              widget._player.play();
              setState(() {
                isPlaying = true;
              });
            },
            icon: PlayerControlIcons(
              widget._player.playing
                  ? Icons.pause_rounded
                  : Icons.play_arrow_rounded,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              widget._player.seekToNext();
            },
            icon: const PlayerControlIcons(Icons.skip_next_rounded),
          ),
        ],
      ),
    );
  }
}

class QueueListControl extends StatelessWidget {
  const QueueListControl({super.key});

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.format_list_bulleted_rounded,
              size: 15,
            ),
            label: const Text('Queue', style: inActiveTextXSmall),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              iconColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
