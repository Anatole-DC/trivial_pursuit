import 'package:flutter/material.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double _bottomNavigationIconSize = 25.0;
  int get _currentIndex =>
      _locationIndexFromString(GoRouter.of(context).location);

  int _locationIndexFromString(String location) {
    int index =
        Routes.values.indexWhere((element) => element.toString() == location);
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(GoRouter.of(context).location)),
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
                icon: Icon(Icons.games, size: _bottomNavigationIconSize),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list, size: _bottomNavigationIconSize),
                label: "Leaderboard"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: _bottomNavigationIconSize),
                label: 'Profile')
          ],
          onTap: (index) =>
              GoRouter.of(context).goNamed(Routes.values[index].toString())),
    );
  }
}
