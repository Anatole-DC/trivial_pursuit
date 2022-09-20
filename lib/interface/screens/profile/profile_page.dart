import 'package:flutter/material.dart';
import 'package:trivial_pursuit/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  final User? user = Auth().currentUser;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _userId() {
    return Text(widget.user?.email ?? 'User email',
        style: const TextStyle(fontSize: 25));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        // Exit button
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

        const SizedBox(
          height: 30,
        ),

        // Profile picture
        const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/images/profile_picture.jpeg'),
        ),

        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userId(),
            const SizedBox(
              width: 10,
            ),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.draw_sharp,
                  size: 30,
                ))
          ],
        ),

        const SizedBox(
          height: 50,
        ),

        const Text(
          "LEADERBOARD",
          style: TextStyle(fontSize: 35),
        ),

        const Text(
          "128",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
