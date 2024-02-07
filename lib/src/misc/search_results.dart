import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No results found !'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Icon(Icons.search_off),
        )
      ],
    );
  }
}
