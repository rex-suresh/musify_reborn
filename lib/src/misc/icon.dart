import 'package:flutter/material.dart';

class IconOf extends StatelessWidget {
  final IconData icon;
  const IconOf({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(icon);
  }
}

class IconActiveOf extends StatelessWidget {
  final IconData icon;
  const IconActiveOf({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
    );
  }
}
