import 'package:flutter/material.dart';
import 'package:musify_reborn/src/screens/album_screen.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../images.dart';

class AlbumCard extends StatelessWidget {
  static double size = 160;
  static double spacing = 6;
  final Album album;

  const AlbumCard(this.album, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AlbumScreen(
              album: album,
            ),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: size,
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.vertical,
            children: [
              Container(
                height: size,
                width: size,
                padding: EdgeInsets.all(spacing),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(spacing),
                  clipBehavior: Clip.hardEdge,
                  child: ImageThumbnail(imageUrl: album.imageUrl),
                ),
              ),
              TitlePlusSub(
                title: album.name,
                subTitle: album.artistName,
                hPad: spacing * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
