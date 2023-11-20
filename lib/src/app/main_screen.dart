import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/player_screen.dart';
import '../screens/search_screen.dart';
import '../misc/icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreenIndex = 0;

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
      currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final body = const [
      HomeScreen(),
      SearchScreen(),
      PlayerScreen()
    ][currentScreenIndex];

    return Scaffold(
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          items: [homeNav, searchNav, playerNav],
          enableFeedback: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          currentIndex: currentScreenIndex,
        ));
  }
}
