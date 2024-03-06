import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../misc/titles.dart';
import '../models/models.dart';
import '../models/player_queue.dart';

class ImageThumbnail extends StatelessWidget {
  final String imageUrl;
  final String defaultImage;

  const ImageThumbnail({
    super.key,
    required this.imageUrl,
    this.defaultImage = 'assets/images/track.png',
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(defaultImage);
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Container(
          color: Colors.transparent,
          child: Center(
            heightFactor: 2,
            widthFactor: 2,
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
              strokeWidth: 2,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String imageUrl;
  final String defaultImage;

  const ImageAvatar({
    super.key,
    required this.imageUrl,
    this.defaultImage = 'assets/images/track.png',
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(defaultImage);
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Container(
          color: Colors.transparent,
          child: Center(
            heightFactor: 2,
            widthFactor: 2,
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
              strokeWidth: 2,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

class AlbumScreenImage extends StatelessWidget {
  final String imageUrl;

  const AlbumScreenImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageThumbnail(imageUrl: imageUrl),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(10),
                child: ImageThumbnail(imageUrl: imageUrl),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlaylistScreenImage extends StatelessWidget {
  final String imageUrl;

  const PlaylistScreenImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: ImageThumbnail(imageUrl: imageUrl),
    );
  }
}

class ArtistScreenImage extends StatelessWidget {
  final String imageUrl;
  final String figureText;

  const ArtistScreenImage({
    super.key,
    required this.imageUrl,
    required this.figureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ImageThumbnail(imageUrl: imageUrl),
          ClippedStyleTitle(titleText: figureText),
        ],
      ),
    );
  }
}

class PlayerScreenImage extends StatelessWidget {
  final String imageUrl;

  const PlayerScreenImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      widthFactor: 0.8,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: ImageThumbnail(imageUrl: imageUrl),
      ),
    );
  }
}

class PlayerScreenFigure extends StatelessWidget {
  final String defaultImageSource = 'https://picsum.photos/500/500';
  final Track? track;

  const PlayerScreenFigure(this.track, {super.key});

  @override
  Widget build(BuildContext context) {
    final trackExist = track != null;

    return Column(children: [
      PlayerScreenImage(
        imageUrl: trackExist ? track!.imageUrl : defaultImageSource,
      ),
      if (trackExist)
        TrackTitlePlusSub(
          title: track!.name,
          subTitle: track!.artistName,
          hPad: 40,
        ),
    ]);
  }
}
