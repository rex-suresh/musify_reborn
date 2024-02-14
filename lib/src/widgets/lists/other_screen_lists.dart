import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../resources/network_repository.dart';
import '../card/track_card_compact.dart';
import 'scrollable_list.dart';

dataListOf(AsyncSnapshot<dynamic> snapshot) =>
    (snapshot.hasData ? snapshot.data : []) as Iterable;

class TracksDiscography extends StatelessWidget {
  const TracksDiscography({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NetworkRepository.homePageTrax(),
      builder: (context, snapshot) {
        return CrossScrollableList(
          data: dataListOf(snapshot),
          listTitle: "Discography",
          widgetBuilder: (item) => TrackCardCompact(item as Track),
        );
      },
    );
  }
}
