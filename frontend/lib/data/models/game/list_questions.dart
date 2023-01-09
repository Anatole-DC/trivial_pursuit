import 'package:trivial_pursuit/data/models/game/question.dart';

class ListQuestions {
  List<Question> results;

  ListQuestions(this.results);

  ListQuestions.fromJson(Map<String, dynamic> json) : results = json['results'];
}
