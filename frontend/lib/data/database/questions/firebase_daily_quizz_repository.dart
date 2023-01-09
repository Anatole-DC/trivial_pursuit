import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/database/questions/open_trivia_repository.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';

class FirebaseDailyQuizzRepository {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static FirebaseDailyQuizzRepository? _instance;

  static final OpenTriviaRepository _trivialPursuitRepository =
      OpenTriviaRepository();

  static late final CollectionReference<List<Question>> _questionRef;

  FirebaseDailyQuizzRepository._();

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.year}-${today.month}-${today.day}';
  }

  static FirebaseDailyQuizzRepository getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore
          .collection('questionOfTheDay')
          .withConverter<List<Question>>(
              fromFirestore: (snapshot, _) =>
                  Question.loadListFromJson(snapshot.data()!),
              toFirestore: (questions, _) =>
                  Question.loadListToJson(questions));
      _instance = FirebaseDailyQuizzRepository._();
    }
    return _instance!;
  }

  Future<void> insertQuestions(List<Question> questions) async {
    await _questionRef.doc(_getDate()).set(questions);
  }

  Future<List<Question>> getQuestionsOfTheDay() async {
    List<Question> questions;
    DocumentSnapshot<List<Question>> response =
        await _questionRef.doc(_getDate()).get();

    if (response.data() == null) {
      questions = await _trivialPursuitRepository.getQuestion();
      insertQuestions(questions);
    } else {
      questions = response.data()!;
    }

    return questions;
  }

  Future<void> delete(String id) async {
    return _questionRef.doc(_getDate()).delete();
  }
}
