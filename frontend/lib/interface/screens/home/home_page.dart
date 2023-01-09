import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = math.Random();
  final double _iconSize = 50;

  double getRandomNumber() {
    return (-3 + _random.nextInt(6)) * math.pi / 180;
  }

  Widget _game(String label, Icon icon, GameRoutes route) {
    return Transform.rotate(
      angle: getRandomNumber(),
      // The actual awnser button
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).goNamed(route.name);
            },
            child: Ink(
                width: MediaQuery.of(context).devicePixelRatio * 100,
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 2.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        icon,
                        Text(
                          label,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                )),
          ),
        ),
      ),
    );
  }

  List<Widget> _games() {
    return [
      _game("Daily Quizz", Icon(Icons.calendar_month, size: _iconSize),
          GameRoutes.dailyQuizz),
      _game("Questions", Icon(Icons.question_mark, size: _iconSize),
          GameRoutes.shootarroundQuestions),
      _game("Online Game", Icon(Icons.wifi, size: _iconSize),
          GameRoutes.onlineGame),
      _game("Private Game", Icon(Icons.private_connectivity, size: _iconSize),
          GameRoutes.privateGame)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [..._games()])),
        ),
        bottomNavigationBar: const TrivialPursuitNavigationBar());
  }
}
