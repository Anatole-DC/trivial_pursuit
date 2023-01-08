import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  final User? user = Auth().currentUser;
  final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();
  Player? player = Auth().currentPlayer;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _userId() {
    return Text(widget.player?.username ?? 'User email',
        style: const TextStyle(fontSize: 25));
  }

  Widget _userScore() {
    return Text(widget.player?.score.toString() ?? 'User score',
        style: const TextStyle(fontSize: 25));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Player>(
        future: widget._playerFirebase.getPlayer(widget.user!.uid),
        builder: (context, AsyncSnapshot<Player> snapshot) {
          if (snapshot.hasData) {
            widget.player = snapshot.data;
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
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpeg'),
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
                  "SCORE",
                  style: TextStyle(fontSize: 35),
                ),

                _userScore()
              ],
            ));
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
