import 'package:flutter/material.dart';
import 'package:musify_reborn/src/screens/artist_screen.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../images.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  static double cardWidth = 140;
  static double cardHeight = 150;
  static double gap = 4;

  const ArtistCard(this.artist, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ArtistScreen(
              artist: artist,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: gap * 2),
        padding: EdgeInsets.symmetric(horizontal: gap / 2),
        width: cardWidth,
        child: Flex(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          direction: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              height: cardHeight,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                backgroundBlendMode: BlendMode.color,
              ),
              child: ImageAvatar(imageUrl: artist.imageUrl),
            ),
            CardTitle(
              title: artist.name,
            ),
          ],
        ),
      ),
    );
  }
}
