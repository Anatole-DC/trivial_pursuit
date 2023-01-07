import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/database/questions/firebase_questions_repository.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/game_cubit.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';
import 'package:trivial_pursuit/interface/screens/game/question_card.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late List<QuestionCard> _questionDeck;
  int currentQuestion = 0;

  List<QuestionCard> questionsDeck(ListQuestions questions) {
    List<QuestionCard> questionCards = [];

    for (var question in questions.results) {
      questionCards.add(QuestionCard(question: question));
    }
    return questionCards;
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => QuestionFirebase.getInstance(),
        child: BlocProvider(
            create: (context) {
              var cubit = GameCubit(
                  repository: RepositoryProvider.of<QuestionFirebase>(context));
              return cubit..fetchQuestion();
            },
            child: BlocConsumer<GameCubit, QuestionState>(listener: (_, state) {
              if (state is AnswerSelected) {
                if (currentQuestion < _questionDeck.length) {
                  currentQuestion++;
                }
              }
            }, builder: (context, state) {
              if (state is Loaded) {
                _questionDeck = questionsDeck(state.questions);
                return Center(child: _questionDeck[currentQuestion]);
              } else if (state is Error) {
                return const Text("Game Over");
              }
              return const Center(child: CircularProgressIndicator());
            })));
  }
}
