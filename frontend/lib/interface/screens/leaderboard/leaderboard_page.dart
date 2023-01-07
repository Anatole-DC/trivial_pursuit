import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_header.dart';

class LeaderboardPage extends StatefulWidget {
  LeaderboardPage({super.key});

  final List<Player> _players = [
    Player("Anatole", "test", 3423, null),
    Player("Stan", "test", 854, null),
    Player("Théo", "test", 2, null),
    Player("Baptiste", "test", 1583, null),
    Player("Jeanne", "test", 520, null),
    Player("Maud", "test", 3405, null),
  ];

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  List<TableRow> _leaderBoardMembers(List<Player> players) {
    List<TableRow> members = [];
    players.sort();

    for (var i = 0; i < players.length; i++) {
      members.add(TableRow(
        children: [
          Column(children: [Text((i + 1).toString())]),
          Column(children: [Text(players[i].username)]),
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
          child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              Column(children: const [LeaderboardHeader(text: "Place")]),
              Column(children: const [LeaderboardHeader(text: "Username")]),
              Column(children: const [LeaderboardHeader(text: "Score")]),
            ],
          ),
          ..._leaderBoardMembers(widget._players)
        ],
      )),
    );
  }
}
