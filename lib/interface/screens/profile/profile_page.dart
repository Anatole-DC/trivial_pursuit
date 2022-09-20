import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        // Exit button

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.logout),
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
          children: const [
            Text(
              "Username",
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
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

        // const SizedBox(
        //   height: 5,
        // ),

        const Text(
          "128",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
