import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit/data/database/firebase_questions_repository.dart';
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

  // SwipingCardDeck questionsDeck(ListQuestions questions) {
  //   List<Card> questionCards = [];
  //   for (var question in questions.results) {
  //     questionCards.add(Card(child: QuestionCard(question: question)));
  //   }
  //   return SwipingCardDeck(
  //     cardWidth: 200,
  //     onDeckEmpty: () => const Text("No more questions to awnser !"),
  //     onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
  //     onRightSwipe: (Card card) => debugPrint("Swiped right!"),
  //     cardDeck: questionCards,
  //   );
  // }

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

// return Center(
//                         child: Column(
//                       children: [
//                         const SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           constraints: const BoxConstraints(maxWidth: 275),
//                           child: Text(
//                             state.questions.results[0].question.toString(),
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                                 fontSize: 40, fontWeight: FontWeight.bold),
//                           ),
//                         ),

//                         // Awnsers
//                         const SizedBox(
//                           height: 75,
//                         ),

//                         Column(
//                           children: [
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   AnwserButton(text: "1950"),
//                                   const SizedBox(
//                                     width: 75,
//                                   ),
//                                   AnwserButton(text: "1979")
//                                 ]),
//                             const SizedBox(
//                               height: 40,
//                             ),
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   AnwserButton(text: "2004"),
//                                   const SizedBox(
//                                     width: 75,
//                                   ),
//                                   AnwserButton(text: "1998")
//                                 ])
//                           ],
//                         ),
//                       ],
//                     ));
