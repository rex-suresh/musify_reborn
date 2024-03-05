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

class PlayerControlIcons extends StatelessWidget {
  final IconData icon;
  final double size;
  const PlayerControlIcons(this.icon, {super.key, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: Colors.white,
    );
  }
}
