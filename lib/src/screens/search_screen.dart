import 'package:flutter/material.dart';

import '../../src/misc/titles.dart';
import '../../src/blocs/padded_body.dart';
import '../../src/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screenTitle("Search"),
      body: const PaddedBody(child: MusifySearch()),
      extendBody: true,
    );
  }
}
