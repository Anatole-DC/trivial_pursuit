import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
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
    // String today = DateTime.now().toIso8601String();
    // return '${today.year}-${today.month}-${today.day}';
    DateTime today = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(today);
  }

  static QuestionFirebase getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore
          .collection('questionOfTheDay')
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
