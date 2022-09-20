import 'package:flutter/material.dart';
import 'package:trivial_pursuit/interface/screens/leaderboard/leaderboard_header.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
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

          // Test Row
          TableRow(
            children: [
              Column(children: const [Text("1")]),
              Column(children: const [Text("adechauveron")]),
              Column(children: const [Text("68145342")]),
            ],
          ),

          // Test Row
          TableRow(
            children: [
              Column(children: const [Text("2")]),
              Column(children: const [Text("bzefoiu")]),
              Column(children: const [Text("3528")]),
            ],
          ),
        ],
      )),
    );
  }
}
