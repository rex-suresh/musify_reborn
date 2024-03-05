import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:just_audio/just_audio.dart';

import '../misc/titles.dart';
import '../widgets/images.dart';
import '../widgets/player_controls.dart';

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
              onPressed: () {
                // trigger something that lets screen switch to home page
              },
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
            ),
          ),
          SliverList.list(
            addAutomaticKeepAlives: true,
            children: [
              const PlayerScreenImage(
                // Just a hardcoded image to create UI
                imageUrl:
                    'https://api.napster.com/imageserver/v2/albums/alb.318336993/images/500x500.jpg',
              ),
              const TrackTitlePlusSub(
                subTitle: 'Artist name',
                title: 'Welcome To The Jungle',
                hPad: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: ProgressBar(
                  progress: Duration(seconds: 10),
                  total: Duration(seconds: 30),
                  progressBarColor: Colors.red,
                  baseBarColor: Colors.grey,
                  barHeight: 2,
                  thumbRadius: 3,
                  timeLabelPadding: 4,
                  timeLabelTextStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  timeLabelType: TimeLabelType.remainingTime,
                ),
              ),
              PlayerControls(_player)
            ],
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
