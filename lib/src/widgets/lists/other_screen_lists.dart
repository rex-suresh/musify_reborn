import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../resources/network_repository.dart';
import '../card/track_card_compact.dart';
import 'scrollable_list.dart';

dataListOf(AsyncSnapshot<dynamic> snapshot) =>
    (snapshot.hasData ? snapshot.data : []) as Iterable;

class AlbumTrackDiscography extends StatelessWidget {
  final String albumId;

  const AlbumTrackDiscography({super.key, required this.albumId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.homePageTrax(),
      builder: (context, snapshot) {
        return CrossList(
          data: dataListOf(snapshot),
          listTitle: "Tracks",
          widgetBuilder: (item) => TrackCardCompact(item as Track),
        );
      },
    );
  }
}
