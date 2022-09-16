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
        Expanded(
          child: Container(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              iconSize: 30,
              alignment: Alignment.topRight,
            ),
          ),
        ),

        // Profile picture
        const CircleAvatar()
      ],
    ));
  }
}
