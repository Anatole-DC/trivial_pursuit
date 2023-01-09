import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text(GoRouter.of(context).location)),
        bottomNavigationBar: const TrivialPursuitNavigationBar());
  }
}
