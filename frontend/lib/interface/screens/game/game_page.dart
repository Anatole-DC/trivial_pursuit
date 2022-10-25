import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/controller/api.dart';
import 'package:trivial_pursuit/interface/screens/game/anwser_button.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 275),
          child: const Text(
            "In what year was the Trivial Pursuit game invented ?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),

        // Awnsers
        const SizedBox(
          height: 75,
        ),

        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AnwserButton(text: "1950"),
              const SizedBox(
                width: 75,
              ),
              AnwserButton(text: "1979")
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AnwserButton(text: "2004"),
              const SizedBox(
                width: 75,
              ),
              AnwserButton(text: "1998")
            ])
          ],
        ),

        const SizedBox(
          height: 75,
        ),

        ElevatedButton(
          onPressed: () {
            testAPI();
          },
          child: const Text("Call API"),
        ),
      ],
    ));
  }
}
