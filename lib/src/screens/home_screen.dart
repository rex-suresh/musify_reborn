import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScreenTitle(title: 'Home'),
        Text(
          "Hey mom! I'm home",
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }
}
