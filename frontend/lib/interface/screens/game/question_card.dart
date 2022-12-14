import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape_small.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';
import 'package:trivial_pursuit/interface/screens/game/anwser_button.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard(
      {super.key, required this.question, this.answerDisplayed = false});
  final Question question;
  final bool answerDisplayed;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  final unescape = HtmlUnescape();

  List<AnwserButton> awnsers(
      List<String> incorrectAwnser, String correctAwnser) {
    List<AnwserButton> awnsers = [];

    for (var awnser in incorrectAwnser) {
      awnsers.add(AnwserButton(text: unescape.convert(awnser)));
    }
    awnsers.add(AnwserButton(
      text: unescape.convert(correctAwnser),
      goodAwnser: true,
    ));

    awnsers.shuffle();

    return awnsers;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.answerDisplayed) {
      return Center(
          child: Column(
        children: [
          Container(
              constraints: const BoxConstraints(maxWidth: 275),
              child: Text(
                unescape.convert(widget.question.question),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 40),
          Column(children: awnsers([], widget.question.correct_answer))
        ],
      ));
    }
    return Center(
        child: Column(
      children: [
        Container(
            constraints: const BoxConstraints(maxWidth: 275),
            child: Text(
              unescape.convert(widget.question.question),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 40),
        Column(
            children: awnsers(widget.question.incorrect_answers,
                widget.question.correct_answer))
      ],
    ));
  }
}
