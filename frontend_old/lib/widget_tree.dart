import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication.dart';
import 'package:trivial_pursuit/interface/screens/authentication/login_screen.dart';
import 'package:trivial_pursuit/interface/screens/home/home_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginScreen(); //const LoginScreen();
        }
      },
    );
  }
}
