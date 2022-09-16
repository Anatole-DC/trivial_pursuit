import 'package:flutter/material.dart';
import 'package:trivial_pursuit/interface/screens/game_page.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard_page.dart';
import 'package:trivial_pursuit/interface/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
      body: pages[_currentIndex],

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromARGB(255, 180, 180, 180),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Game'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Leaderboard'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        onTap: (index) => {navigate(index)},
      ),
    );
  }
}
