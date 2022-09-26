import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/screens/home/home_page.dart';

void main() {
  runApp(TrivialPursuitApp());
}

class TrivialPursuitApp extends StatelessWidget {
  TrivialPursuitApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      title: 'Trivial Pursuit',
      theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 233, 233, 233),
          fontFamily: 'PatrickHand'),
    );
  }

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: ('/'),
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
        name: 'home'),
  ]);
}
