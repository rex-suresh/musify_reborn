import 'package:flutter/material.dart';

import '../misc/titles.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screenTitle("Player"),
      body: const Text("Hey mom! I'm playing"),
    );
  }
}
