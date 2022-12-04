import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/database/firebase_questions_repository.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';

import '../../../../data/models/game/question.dart';

class GameCubit extends Cubit<QuestionState> {
  final QuestionFirebase repository;

  late Question _lastQuestion;

  int score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository}) : super(const Loading());

  setAwnser(String anwser) {
    selectedAnswer = anwser;
    emit(AnswerSelected(anwser));
  }

  Future<void> fetchQuestion() async {
    emit(const Loading());

    try {
      ListQuestions list = await repository.getQuestionsOfTheDay();
      emit(Loaded(list));
    } on Exception catch (exception) {
      emit(Error(exception.toString()));
    }
  }
}
