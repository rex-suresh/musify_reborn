import 'package:flutter/material.dart';

class PaddedBody extends StatelessWidget {
  final Widget child;

  const PaddedBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: child,
    );
  }
}
