import 'package:flutter/material.dart';

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
