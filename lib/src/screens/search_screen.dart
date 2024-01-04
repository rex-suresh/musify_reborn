import 'package:flutter/material.dart';

import '../misc/titles.dart';
import '../blocs/padded_body.dart';
import '../widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: screenTitle("Search"),
      body: const PaddedBody(child: MusifySearch()),
      extendBody: true,
    );
  }
}
