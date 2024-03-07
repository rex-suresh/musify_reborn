import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'models.dart';

class PlayerQueue extends ChangeNotifier {
  static int currentIndex = 0;
  final List<dynamic> _queueData = [];
  final _queue = ConcatenatingAudioSource(children: []);
  final AudioPlayer player = AudioPlayer();

  AudioSource _prepareAudioSource(dynamic track) =>
      AudioSource.uri(Uri.parse((track as Track).trackUrl));

  List<AudioSource> _prepareAudioSourceList(List<dynamic> trackList) =>
      trackList.map(_prepareAudioSource).toList();

  void addAll(List<dynamic> trackList) {
    _queueData.addAll(trackList);
    _queue.addAll(_prepareAudioSourceList(trackList));

    notifyListeners();
  }

  void addToTop(Track track) {
    _queueData.insert(0, track);

    notifyListeners();
  }

  void clear() {
    _queueData.clear();
    currentIndex = 0;
    notifyListeners();
  }

  void clearAndAddAll(List<Track> trackList) {
    _queueData.clear();
    currentIndex = 0;
    addAll(trackList);
  }

  void addNext(Track track) {
    _queueData.insert(currentIndex + 1, track);
    notifyListeners();
  }

  UnmodifiableListView<Track> get tracks {
    return UnmodifiableListView(_queueData) as UnmodifiableListView<Track>;
  }

  Track? get currentTrack {
    return _queueData.length > currentIndex
        ? _queueData.elementAt(currentIndex)
        : null;
  }
}
