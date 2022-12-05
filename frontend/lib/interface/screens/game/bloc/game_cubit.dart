import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/database/firebase_questions_repository.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';

class GameCubit extends Cubit<QuestionState> {
  final QuestionFirebase repository;

  late ListQuestions questions; // = [] as ListQuestions;
  int currentQuestionIndex = 0;

  int score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository}) : super(const Loading());

  // setAwnser(String anwser) {
  //   selectedAnswer = anwser;
  //   emit(AnswerSelected(anwser));
  // }

  Future<void> fetchQuestion() async {
    emit(const Loading());

    try {
      questions = await repository.getQuestionsOfTheDay();
      emit(Loaded(questions));
    } on Exception catch (exception) {
      emit(Error(exception.toString()));
    }
  }

  void questionClicked(bool isGoodAwnser) {
    if (currentQuestionIndex < questions.results.length) {
      currentQuestionIndex += 1;
      emit(AnswerSelected(isGoodAwnser));
    } else {
      emit(const Error("Game over"));
    }
  }
}
