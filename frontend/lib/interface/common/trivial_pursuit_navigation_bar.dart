import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/helper/navigation.dart';

class TrivialPursuitNavigationBar extends StatefulWidget {
  const TrivialPursuitNavigationBar({super.key});

  @override
  State<TrivialPursuitNavigationBar> createState() =>
      _TrivialPursuitNavigationBarState();
}

class _TrivialPursuitNavigationBarState
    extends State<TrivialPursuitNavigationBar> {
  final double _bottomNavigationIconSize = 25.0;
  int get _currentIndex =>
      _locationIndexFromString(ModalRoute.of(context)!.settings.name!);

  int _locationIndexFromString(String location) {
    final index =
        Routes.values.indexWhere((element) => element.name == location);
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromARGB(255, 214, 214, 214),
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
            GoRouter.of(context).goNamed(Routes.values[index].name));
  }
}
