import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.color,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.white,
            Colors.black,
          ],
        ),
      ),
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(4),
      child: ImageThumbnail(imageUrl: imageUrl),
    );
  }
}
