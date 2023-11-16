import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      padding: const EdgeInsets.all(4),
      child: const Column(children: [
        Column(
          children: [Text("Playlist Name"), Text("artists")],
        )
      ]),
    );
  }
}
