import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:trivial_pursuit/interface/screens/config/profile_page.dart';
import 'package:trivial_pursuit/interface/screens/home/home_page.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      name: Routes.homePage.toString(),
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/leaderboard",
      name: Routes.leaderboardPage.toString(),
      builder: (context, state) => const LeaderboardPage(),
    ),
    GoRoute(
      path: "/profile",
      name: Routes.profilePage.toString(),
      builder: (context, state) => const ProfilePage(),
    )
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Trivial Pursuit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
