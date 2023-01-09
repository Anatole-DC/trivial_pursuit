import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivial_pursuit/data/models/game/question.dart';

class OpenTriviaRepository {
  final String _openTriviaUri = "https://opentdb.com/api.php?amount=10";

  Future<List<Question>> getQuestion() async {
    http.Response response = await http.get(Uri.parse(_openTriviaUri));

    String body = response.body;

    List<Question> questions = Question.loadListFromJson(jsonDecode(body));

    return questions;
  }
}
