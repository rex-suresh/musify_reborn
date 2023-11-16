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
  int currentIndex = 0;
  late Widget _body;

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
    screenSelector();

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: _body,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [homeNav, searchNav, playerNav],
          enableFeedback: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          currentIndex: currentIndex,
        ));
  }

  void screenSelector() {
    switch (currentIndex) {
      case 1:
        _body = const SearchScreen();
      case 2:
        _body = const PlayerScreen();
      default:
        _body = const HomeScreen();
    }
  }
}
