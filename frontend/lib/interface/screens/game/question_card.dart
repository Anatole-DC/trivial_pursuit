import 'package:flutter/material.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';
import 'package:trivial_pursuit/interface/screens/game/anwser_button.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question});

  final Question question;

  List<AnwserButton> awnsers(
      List<String> incorrectAwnser, String correctAwnser) {
    List<AnwserButton> awnsers = [];

    for (var awnser in incorrectAwnser) {
      awnsers.add(AnwserButton(text: awnser));
    }
    awnsers.add(AnwserButton(text: correctAwnser));

    awnsers.shuffle();

    return awnsers;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
            constraints: const BoxConstraints(maxWidth: 275),
            child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 40),
        Column(
            children:
                awnsers(question.incorrect_answers, question.correct_answer))
      ],
    ));
  }
}
