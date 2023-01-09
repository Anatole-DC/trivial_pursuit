import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:trivial_pursuit/interface/screens/config/profile_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/daily_quizz_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/online_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/private_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/shootarrond_questions_game_page.dart';
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
        name: Routes.homePage.name,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: "dailyQuizz",
            name: GameRoutes.dailyQuizz.name,
            builder: (context, state) => const DailyQuizzGamePage(),
          ),
          GoRoute(
            path: "shootarroundQuestions",
            name: GameRoutes.shootarroundQuestions.name,
            builder: (context, state) => const ShootarroundQuestionsGamePage(),
          ),
          GoRoute(
            path: "onlineGame",
            name: GameRoutes.onlineGame.name,
            builder: (context, state) => const OnlineGamePage(),
          ),
          GoRoute(
            path: "privateGame",
            name: GameRoutes.privateGame.name,
            builder: (context, state) => const PrivateGamePage(),
          ),
        ]),
    GoRoute(
      path: "/leaderboard",
      name: Routes.leaderboardPage.name,
      builder: (context, state) => const LeaderboardPage(),
    ),
    GoRoute(
      path: "/profile",
      name: Routes.profilePage.name,
      builder: (context, state) => const ProfilePage(),
    )
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Trivial Pursuit',
      theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 233, 233, 233),
          fontFamily: "PatrickHand"),
      routerConfig: _router,
    );
  }
}
