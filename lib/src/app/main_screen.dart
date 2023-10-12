import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final BottomNavigationBarItem homeNav = const BottomNavigationBarItem(
    label: 'Home',
    icon: IconOf(icon: Icons.home_rounded),
  );

  final BottomNavigationBarItem searchNav = const BottomNavigationBarItem(
    label: 'Search',
    icon: IconOf(icon: Icons.search_rounded),
  );

  final BottomNavigationBarItem playerNav = const BottomNavigationBarItem(
    label: 'Player',
    icon: IconOf(icon: Icons.music_note_rounded),
  );

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Text('This hurts! $currentIndex', textDirection: TextDirection.ltr),
        bottomNavigationBar: BottomNavigationBar(
          items: [homeNav, searchNav, playerNav],
          enableFeedback: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          currentIndex: currentIndex,
        ));
  }
}

// SafeArea(
//           child: Container(
//         padding: const EdgeInsets.all(20),
//         child: const Text(
//           "Hey mom!",
//           textDirection: TextDirection.ltr,
//         ),