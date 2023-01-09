import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';
import 'package:trivial_pursuit/interface/common/work_in_progress.dart';

class DailyQuizzGamePage extends StatefulWidget {
  const DailyQuizzGamePage({super.key});

  @override
  State<DailyQuizzGamePage> createState() => _DailyQuizzGamePageState();
}

class _DailyQuizzGamePageState extends State<DailyQuizzGamePage> {
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
