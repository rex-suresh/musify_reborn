import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScreenTitle(title: 'Player'),
        Text(
          "Hey mom! I'm playing",
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }
}
