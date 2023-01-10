import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/database/leaderboard/firebase_leaderboard_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_header.dart';

class LeaderboardPage extends StatefulWidget {
  LeaderboardPage({super.key});

  final LeaderboardFirebase _leaderboardFirebase =
      LeaderboardFirebase.getInstance();

  final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  List<TableRow> _leaderBoardMembers(List<Player>? players) {
    List<TableRow> members = [];
    if (players == null) {
      return members;
    }

    for (var i = 0; i < players.length; i++) {
      members.add(TableRow(
        children: [
          Column(children: [Text((i + 1).toString())]),
          Column(children: [Text(players[i].username ?? "Default Username")]),
          Column(children: [Text(players[i].score.toString())]),
        ],
      ));
    }
    return members;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: FutureBuilder<List<Player>>(
          future: widget._playerFirebase.getAllPlayer(),
          builder: (context, AsyncSnapshot<List<Player>> snapshot) {
            if (snapshot.hasData) {
              return Center(
                  child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      Column(
                          children: const [LeaderboardHeader(text: "Place")]),
                      Column(children: const [
                        LeaderboardHeader(text: "Username")
                      ]),
                      Column(
                          children: const [LeaderboardHeader(text: "Score")]),
                    ],
                  ),
                  ..._leaderBoardMembers(snapshot.data)
                ],
              ));
            } else {
              return const CircularProgressIndicator();
            }
          }),
    ));
  }
}
