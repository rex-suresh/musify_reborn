// import 'dart:convert' show jsonDecode;
// import 'dart:io';

import 'package:flutter/material.dart';

class TopTrackList extends StatelessWidget {
  const TopTrackList({super.key});

  @override
  Widget build(BuildContext context) {
    // var jsondata = new File('../');
    // var data = jsonDecode('{"apple": 2}');

    return const Column(children: [
      ListTile(
        title: Text('Top Tracks !!!'),
      ),
      // ListView(
      //   children: [],
      //   addAutomaticKeepAlives: true,
      // )
    ]);
  }
}
