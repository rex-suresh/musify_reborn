import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScreenTitle(title: 'Search'),
        Text(
          "Hey mom! I'm searching home",
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }
}
