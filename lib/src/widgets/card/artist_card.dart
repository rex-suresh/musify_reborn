import 'package:flutter/material.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../images.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  static double size = 150;
  static double gap = 4;

  const ArtistCard(this.artist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: gap * 2),
      padding: EdgeInsets.symmetric(horizontal: gap / 2),
      width: size,
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.vertical,
        children: [
          Container(
            width: double.infinity,
            height: size,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: Colors.grey, strokeAlign: 1),
                backgroundBlendMode: BlendMode.color),
            child: ImageAvatar(imageUrl: artist.imageUrl),
          ),
          CardTitle(
            title: artist.name,
            hPad: gap,
          ),
        ],
      ),
    );
  }
}
