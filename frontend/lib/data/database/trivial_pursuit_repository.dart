import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivial_pursuit/data/models/game/list_questions.dart';

class TrivialPursuitRepository {
  final String _openTriviaUri = "https://opentdb.com/api.php?amount=10";

  Future<ListQuestions> getQuestion() async {
    http.Response response = await http.get(Uri.parse(_openTriviaUri));

    String body = response.body;

    ListQuestions questions = ListQuestions.fromJson(jsonDecode(body));

    return questions;
  }
}
