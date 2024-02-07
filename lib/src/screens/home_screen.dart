import 'package:flutter/material.dart';
import 'package:musify_reborn/src/api/api.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';
import '../widgets/lists/home_screen_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screenContents = [
      const TopPlaylists(),
      const TopTracks(),
      const TopAlbums(),
      const TopArtists(),
      TesterText()
    ];

    return Scaffold(
      body: PaddedBody(
        hPad: 8,
        child: CustomScrollView(
          slivers: [
            screenTitle("Home"),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => screenContents[index],
                childCount: screenContents.length,
              ),
            ),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class TesterText extends StatefulWidget {
  const TesterText({super.key});

  @override
  State<TesterText> createState() => _TesterTextState();
}

class _TesterTextState extends State<TesterText> {
  String content = 'Hello';

  @override
  void initState() {
    super.initState();
    API.base().then((value) {
      if (context.mounted) {
        setState(() {
          content = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}
