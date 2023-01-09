import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/controller/authentication_controller.dart';
import 'package:trivial_pursuit/helper/navigation.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AuthenticationController _authenticationController =
      AuthenticationController.getInstance();

  void redirect() {
    GoRouter.of(context).go('/');
  }

  Future<void> signOut() async {
    await _authenticationController.logout();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const TrivialPursuitNavigationBar(),
        body: SafeArea(
            child: Center(
                child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  signOut();
                },
                icon: const Icon(Icons.logout),
                iconSize: 30,
              ),
            ],
          ),
        ]))));
  }
}
