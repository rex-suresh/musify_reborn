import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hey mom! I'm home",
      textDirection: TextDirection.ltr,
    );
  }
}