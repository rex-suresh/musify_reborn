import 'package:flutter/material.dart';

class PaddedBody extends StatelessWidget {
  final Widget child;
  final double hPad;
  final double vPad;

  const PaddedBody({
    super.key,
    required this.child,
    this.hPad = 16,
    this.vPad = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vPad, horizontal: hPad),
      child: child,
    );
  }
}
