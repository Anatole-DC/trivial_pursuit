import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/interface/screens/authentication/login_screen.dart';
import 'package:trivial_pursuit/interface/screens/home/home_page.dart';
import 'package:trivial_pursuit/widget_tree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TrivialPursuitApp());
}

class TrivialPursuitApp extends StatelessWidget {
  const TrivialPursuitApp({super.key});

  // final GoRouter _router = GoRouter(routes: <GoRoute>[
  //   GoRoute(
  //       path: ('/'),
  //       builder: (BuildContext context, GoRouterState state) =>
  //           const LoginScreen(),
  //       name: 'login'),
  // ]);

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp.router(
  //     routerDelegate: _router.routerDelegate,
  //     routeInformationParser: _router.routeInformationParser,
  //     routeInformationProvider: _router.routeInformationProvider,
  //     backButtonDispatcher: _router.backButtonDispatcher,
  //     title: 'Trivial Pursuit',
  //     theme: ThemeData(
  //         primaryColor: Colors.black,
  //         backgroundColor: const Color.fromARGB(255, 233, 233, 233),
  //         fontFamily: 'PatrickHand'),
  //   );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 233, 233, 233),
            fontFamily: 'PatrickHand'),
        home: const WidgetTree());
  }

  // This widget is the root of your application.
}
