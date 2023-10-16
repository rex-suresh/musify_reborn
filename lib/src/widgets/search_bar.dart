import 'package:flutter/material.dart';

class MusifySearch extends StatelessWidget {
  const MusifySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        child: SearchBar(
          padding: MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          leading: Icon(Icons.search),
          hintText: 'Songs, Albums, Playlists...',
        ));
  }
}
