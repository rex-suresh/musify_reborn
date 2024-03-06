import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../widgets/images.dart';
import '../widgets/player/player_controls.dart';
import '../widgets/track_progress.dart';

class PlayerScreen extends StatelessWidget {
  final _player = AudioPlayer();
  final trackImage = 'https://picsum.photos/500/500';
  final subTitle = 'Artist name';
  final title = 'Welcome To The Jungle';

  PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                // trigger something that lets screen switch to home page
              },
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
            ),
          ),
          SliverList.list(
            addAutomaticKeepAlives: true,
            children: [
              PlayerScreenFigure(
                imageUrl: trackImage,
                subTitle: subTitle,
                title: title,
              ),
              const TrackProgress(),
              PlayerControls(_player)
            ],
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
