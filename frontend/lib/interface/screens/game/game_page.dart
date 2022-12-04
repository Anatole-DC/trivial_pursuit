import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/controller/api.dart';
import 'package:trivial_pursuit/data/database/firebase_questions_repository.dart';
import 'package:trivial_pursuit/interface/screens/game/anwser_button.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/game_cubit.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
            child: BlocConsumer<GameCubit, QuestionState>(
                listener: (_, state) {},
                builder: (context, state) {
                  if (state is Loaded) {
                    // return Text(state.questions.results.toString());
                    return Center(
                        child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 275),
                          child: Text(
                            state.questions.results[0].question.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),

                        // Awnsers
                        const SizedBox(
                          height: 75,
                        ),

                        Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnwserButton(text: "1950"),
                                  const SizedBox(
                                    width: 75,
                                  ),
                                  AnwserButton(text: "1979")
                                ]),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnwserButton(text: "2004"),
                                  const SizedBox(
                                    width: 75,
                                  ),
                                  AnwserButton(text: "1998")
                                ])
                          ],
                        ),
                      ],
                    ));
                  }
                  return const Center(child: CircularProgressIndicator());
                })));
  }
}
