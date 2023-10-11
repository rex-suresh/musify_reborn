import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static ThemeData theme = ThemeData.dark(useMaterial3: true);
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: 'some 1',
            icon: Text(
              'data 1',
              textDirection: TextDirection.ltr,
            )),
        BottomNavigationBarItem(
            label: 'some 2',
            icon: Text(
              'data 2',
              textDirection: TextDirection.ltr,
            )),
      ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Text(
          "Hey mom!",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
