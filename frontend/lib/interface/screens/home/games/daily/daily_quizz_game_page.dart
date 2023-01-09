import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/controller/daily_quizz_game_controller.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';
import 'package:trivial_pursuit/interface/common/trivial_pursuit_navigation_bar.dart';
import 'package:trivial_pursuit/interface/common/work_in_progress.dart';

class DailyQuizzGamePage extends StatefulWidget {
  const DailyQuizzGamePage({super.key});

  @override
  State<DailyQuizzGamePage> createState() => _DailyQuizzGamePageState();
}

class _DailyQuizzGamePageState extends State<DailyQuizzGamePage> {
  final DailyQuizzGameController _dailyQuizzGameController =
      DailyQuizzGameController();

  Widget _anwserButtonUI(String answer) {
    return Text(answer);
  }

  List<Widget> _questionAnwsers(List<String> incorrectAnwsers, String answer) {
    List<Widget> questionAnwserUI = [];
    for (var element in incorrectAnwsers) {
      questionAnwserUI.add(_anwserButtonUI(element));
    }
    questionAnwserUI.add(_anwserButtonUI(answer));
    questionAnwserUI.shuffle();
    return questionAnwserUI;
  }

  Widget _questionCard(Question question) {
    return ListView(
      children: [
        Text(question.question),
        ..._questionAnwsers(question.incorrect_answers, question.correct_answer)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: FutureBuilder(
          future: _dailyQuizzGameController.getDailyQuestion(),
          builder: (_, snapshot) {
            if (_dailyQuizzGameController.currentState ==
                DailyQuizzState.loaded) {
              return _questionCard(snapshot.data![0]);
            } else if (_dailyQuizzGameController.currentState ==
                DailyQuizzState.loading) {
              return const CircularProgressIndicator();
            } else {
              return const Center(child: Text("An error occured"));
            }
          },
        ))),
        bottomNavigationBar: const TrivialPursuitNavigationBar());
  }
}
