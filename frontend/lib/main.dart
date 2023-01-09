import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/controller/authentication_controller.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:trivial_pursuit/interface/screens/auth/authentication_page.dart';
import 'package:trivial_pursuit/interface/screens/config/profile_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/daily/daily_quizz_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/online_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/private_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/games/shootarrond_questions_game_page.dart';
import 'package:trivial_pursuit/interface/screens/home/home_page.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static final AuthenticationController _authenticationController =
      AuthenticationController.getInstance();

  static GoRoute _customRoute(String path, Routes route, Widget page,
      [List<GoRoute>? routes]) {
    return GoRoute(
        path: path,
        name: route.name,
        routes: routes ?? [],
        redirect: (context, state) {
          if (_authenticationController.isLoggedIn()) {
            return "/authenticate";
          }
          return state.path;
        },
        builder: (context, state) => page);
  }

  static String redirect(String path) {
    if (_authenticationController.isLoggedIn()) {
      return "/authenticate";
    }
    return path;
  }

  final GoRouter _router = GoRouter(
      redirect: (context, state) {
        if (_authenticationController.isLoggedIn()) {
          return state.path;
        }
        return "/authenticate";
      },
      routes: [
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
                builder: (context, state) =>
                    const ShootarroundQuestionsGamePage(),
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
        ),
        GoRoute(
          path: "/authenticate",
          name: "authenticate",
          builder: (context, state) => const AuthenticationPage(),
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
