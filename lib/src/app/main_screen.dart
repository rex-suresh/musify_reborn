import 'package:flutter/material.dart';
import 'package:musify_reborn/src/app/nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: const Text(
          "Hey mom!",
          textDirection: TextDirection.ltr,
        ),
      )),
    );
  }
}
