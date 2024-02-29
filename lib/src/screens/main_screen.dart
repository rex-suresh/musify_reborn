import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'player_screen.dart';
import 'search_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              const HomeScreen(),
              const SearchScreen(),
              PlayerScreen()
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home_rounded)),
              Tab(text: 'Search', icon: Icon(Icons.search_rounded)),
              Tab(text: 'Player', icon: Icon(Icons.music_note_rounded)),
            ],
            labelPadding: EdgeInsets.only(top: 2),
            splashBorderRadius: BorderRadius.all(Radius.circular(10)),
            enableFeedback: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle:
                TextStyle(color: Colors.transparent, fontSize: 0),
            indicator: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.red, width: 1)),
            ),
          ),
        ),
      ),
    );
  }
}
