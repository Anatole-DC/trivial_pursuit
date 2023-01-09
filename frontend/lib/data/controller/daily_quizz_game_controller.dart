import 'package:trivial_pursuit/data/database/questions/firebase_daily_quizz_repository.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';

enum DailyQuizzState { loading, loaded, nextQuestion, gameOver, error }

class DailyQuizzGameController {
  final FirebaseDailyQuizzRepository _firebaseDailyQuizzRepository =
      FirebaseDailyQuizzRepository.getInstance();

  DailyQuizzState get currentState => _currentState;
  static DailyQuizzState _currentState = DailyQuizzState.loading;

  Future<List<Question>> getDailyQuestion() async {
    _currentState = DailyQuizzState.loading;
    List<Question> questions =
        await _firebaseDailyQuizzRepository.getQuestionsOfTheDay();
    if (questions != []) {
      _currentState = DailyQuizzState.loaded;
      return questions;
    }
    return [];
  }
}
