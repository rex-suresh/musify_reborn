import 'package:flutter/material.dart';
import 'package:musify_reborn/src/blocs/search_results.dart';
import 'package:musify_reborn/src/misc/titles.dart';
import 'package:musify_reborn/src/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScreenTitle(title: 'Search'),
        MusifySearch(),
        SearchResults(),
      ],
    );
  }
}
