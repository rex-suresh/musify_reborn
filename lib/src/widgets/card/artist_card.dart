import 'package:flutter/material.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../images.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  static double size = 160;
  static double spacing = 6;

  const ArtistCard(this.artist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size,
              width: size,
              margin: EdgeInsets.all(spacing),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: spacing,
                    blurStyle: BlurStyle.outer,
                  )
                ],
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: ImageAvatar(imageUrl: artist.imageUrl),
            ),
            CardTitle(
              title: artist.name,
              hPad: spacing * 2,
            ),
          ],
        ),
      ),
    );
  }
}
