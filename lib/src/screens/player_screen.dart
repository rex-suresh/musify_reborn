import 'package:flutter/material.dart';

import '../misc/padded_body.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaddedBody(child: Text("Hey mom! I'm playing"));
  }
}
