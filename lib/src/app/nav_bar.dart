import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/icon.dart';

// onPressed: () {
//   Navigator.of(context).push(
//     MaterialPageRoute(
//       builder: (context) => const SongScreen(song: song),
//     ),
//   );
// }

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

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

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [homeNav, searchNav, playerNav],
      enableFeedback: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
    );
  }
}
