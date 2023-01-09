import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';
import 'package:trivial_pursuit/interface/common/work_in_progress.dart';

class ShootarroundQuestionsGamePage extends StatefulWidget {
  const ShootarroundQuestionsGamePage({super.key});

  @override
  State<ShootarroundQuestionsGamePage> createState() =>
      _ShootarroundQuestionsGamePageState();
}

class _ShootarroundQuestionsGamePageState
    extends State<ShootarroundQuestionsGamePage> {
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
