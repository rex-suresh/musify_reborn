import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

import '../../misc/titles.dart';

class TrackProgress extends StatelessWidget {
  const TrackProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: ProgressBar(
        progress: Duration(seconds: 10),
        total: Duration(seconds: 30),
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
