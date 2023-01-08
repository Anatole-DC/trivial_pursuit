import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/database/questions/trivial_pursuit_repository.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static final TrivialPursuitRepository _trivialPursuitRepository =
      TrivialPursuitRepository();

  static late final CollectionReference<ListQuestions> _questionRef;

  QuestionFirebase._();

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.year}-${today.month}-${today.day}';
  }

  static QuestionFirebase getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore
          .collection('questions')
          .withConverter<ListQuestions>(
              fromFirestore: (snapshot, _) =>
                  ListQuestions.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestions(ListQuestions questions) async {
    await _questionRef.doc(_getDate()).set(questions);
  }

  Future<ListQuestions> getQuestionsOfTheDay() async {
    ListQuestions questions;
    DocumentSnapshot<ListQuestions> response =
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
