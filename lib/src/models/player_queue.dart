import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'models.dart';

class PlayerQueue extends ChangeNotifier {
  static int currentIndex = 0;
  final List<Track> _queue = [];
  final AudioPlayer player = AudioPlayer();

  void addAll(List<Track> trackList) {
    _queue.addAll(trackList);
    notifyListeners();
  }

  void addToTop(Track track) {
    _queue.insert(0, track);
    notifyListeners();
  }

  void clear() {
    _queue.clear();
    currentIndex = 0;
    notifyListeners();
  }

  void clearAndAddAll(List<Track> trackList) {
    _queue.clear();
    currentIndex = 0;
    addAll(trackList);
  }

  void addNext(Track track) {
    _queue.insert(currentIndex + 1, track);
    notifyListeners();
  }

  UnmodifiableListView<Track> get tracks {
    return UnmodifiableListView(_queue);
  }

  Track? get currentTrack {
    return _queue.length > currentIndex ? _queue.elementAt(currentIndex) : null;
  }
}
