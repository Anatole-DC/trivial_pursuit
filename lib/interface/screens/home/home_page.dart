import 'package:flutter/material.dart';
import 'package:trivial_pursuit/interface/screens/game/game_page.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_page.dart';
import 'package:trivial_pursuit/interface/screens/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;
  final double _bottomNavigationIconSize = 25.0;

  final List<Widget> pages = [
    const GamePage(),
    const LeaderboardPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    void navigate(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      //Pages
      body: SafeArea(
        child: pages[_currentIndex],
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromARGB(255, 180, 180, 180),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.games,
                size: _bottomNavigationIconSize,
              ),
              label: 'Game'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list, size: _bottomNavigationIconSize),
              label: 'Leaderboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: _bottomNavigationIconSize),
              label: 'Profile')
        ],
        onTap: (index) => {navigate(index)},
      ),
    );
  }
}
