import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/database/questions/firebase_questions_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/interface/screens/game/bloc/question_bloc.dart';

class GameCubit extends Cubit<QuestionState> {
  final QuestionFirebase repository;

  late ListQuestions questions; // = [] as ListQuestions;
  int currentQuestionIndex = 0;

  static final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();

  int score = 0;
  String selectedAnswer = '';

  static final difficulty = {"easy": 1, "medium": 2, "hard": 3};

  GameCubit({required this.repository}) : super(const Loading());

  // setAwnser(String anwser) {
  //   selectedAnswer = anwser;
  //   emit(AnswerSelected(anwser));
  // }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.year}-${today.month}-${today.day}';
  }

  Future<void> fetchQuestion() async {
    emit(const Loading());

    try {
      Player player = await _playerFirebase.getUserPlayer();
      if (player.lastDailyQuizz == _getDate()) {
        emit(const GameAlreadyPlayed());
      } else {
        questions = await repository.getQuestionsOfTheDay();
        emit(Loaded(questions));
      }
    } on Exception catch (exception) {
      emit(Error(exception.toString()));
    }
  }

  void questionClicked(bool isGoodAwnser) {
    if (isGoodAwnser) {
      score += difficulty[questions.results[currentQuestionIndex].difficulty]!;
    }
    currentQuestionIndex++;
    emit(AnswerSelected(isGoodAwnser));
    if (currentQuestionIndex < questions.results.length) {
      emit(Loaded(questions));
    } else {
      emit(GameOver(score));
    }
  }
}
