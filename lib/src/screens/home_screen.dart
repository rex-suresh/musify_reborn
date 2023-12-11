import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Playlists
    // Tracks
    // Albums
    // Artists

    return Scaffold(
      appBar: screenTitle(
          "Home"), // fn cuz type issue need to know how to solve this
      body: PaddedBody(
        child: Column(
          children: [
            const Text('List'),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [],
              ),
            )
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
