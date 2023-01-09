import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';
import 'package:trivial_pursuit/interface/common/work_in_progress.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(GoRouter.of(context).location),
            const WorkInProgress()
          ]),
        )),
        bottomNavigationBar: const TrivialPursuitNavigationBar());
  }
}
