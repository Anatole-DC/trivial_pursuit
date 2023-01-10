import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/database/questions/firebase_questions_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/game_cubit.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';
import 'package:trivial_pursuit/interface/screens/game/question_card.dart';

class GamePage extends StatefulWidget {
  GamePage({super.key});

  final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();
  final User? user = Auth().currentUser;
  final Player? player = Auth().currentPlayer;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late List<QuestionCard> _questionDeck;
  int currentQuestion = 0;
  late QuestionCard _currentCard;

  List<QuestionCard> questionsDeck(ListQuestions questions) {
    List<QuestionCard> questionCards = [];

    for (var question in questions.results) {
      questionCards.add(QuestionCard(question: question));
    }
    return questionCards;
  }

  QuestionCard _getCurrentCard() {
    _currentCard = _questionDeck[currentQuestion];
    return _currentCard;
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
                return Center(child: _getCurrentCard());
              } else if (state is GameOver) {
                return FutureBuilder<void>(
                    future: widget._playerFirebase
                        .updatePlayerScore(widget.user!.uid, state.score),
                    builder: (context, AsyncSnapshot<void> snapshot) {
                      return const Center(child: Text("Game is over !"));
                    });
              } else if (state is DisplayerAnswer) {
                return Center(
                    child: QuestionCard(
                  question: state.question,
                  answerDisplayed: true,
                ));
              } else if (state is GameAlreadyPlayed) {
                return const Center(
                    child: Text("You already played, come back tomorrow !"));
              } else if (state is Error) {
                return Center(
                  child: Text(state.message),
                );
              }
              return const Center(child: CircularProgressIndicator());
            })));
  }
}
