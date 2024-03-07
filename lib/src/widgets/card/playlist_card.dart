import 'package:flutter/material.dart';

import '../../misc/titles.dart';
import '../../models/models.dart';
import '../../screens/playlist_screen.dart';
import '../images.dart';

class PlaylistCard extends StatelessWidget {
  static double size = 240;
  final Playlist playlist;

  const PlaylistCard(this.playlist, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PlaylistScreen(
              playlist: playlist,
            ),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            clipBehavior: Clip.antiAlias,
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Hero(
                tag: playlist.id,
                child: SizedBox(
                  width: size,
                  height: size,
                  child: ImageThumbnail(imageUrl: playlist.imageUrl),
                ),
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    colors: [
                      Colors.transparent,
                      Colors.black87,
                      Colors.black,
                    ],
                  ),
                ),
                child: TitlePlusDescription(
                  title: playlist.name,
                  description: playlist.description,
                  hPad: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
