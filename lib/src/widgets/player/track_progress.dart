import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:just_audio/just_audio.dart';

import '../../misc/titles.dart';

class TrackProgress extends StatelessWidget {
  final AudioPlayer _player;
  const TrackProgress(this._player, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
      child: ProgressBar(
        progress: _player.position,
        total: _player.duration ?? const Duration(seconds: 30),
        progressBarColor: Colors.red,
        thumbColor: Colors.white,
        baseBarColor: Colors.grey,
        barHeight: 2,
        thumbRadius: 3,
        thumbGlowRadius: 15,
        timeLabelPadding: 4,
        timeLabelTextStyle: inActiveTextSmall,
        timeLabelType: TimeLabelType.remainingTime,
      ),
    );
  }
}
