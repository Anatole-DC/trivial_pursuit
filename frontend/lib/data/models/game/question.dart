class Question {
  String category;
  String type;
  String difficulty;
  String question;
  // ignore: non_constant_identifier_names
  String correct_answer;
  // ignore: non_constant_identifier_names
  List<String> incorrect_answers;

  Question(this.category, this.type, this.difficulty, this.question,
      this.correct_answer, this.incorrect_answers);

  static List<Question> loadListFromJson(Map<String, dynamic> json) {
    return (json['results'] as List<dynamic>)
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Map<String, dynamic> loadListToJson(List<Question> questions) {
    return {'results': questions.map((e) => e.toJson()).toList()};
  }

  Question.fromJson(Map<String, dynamic> json)
      : category = json['category'],
        type = json['type'],
        difficulty = json['difficulty'],
        question = json['question'],
        correct_answer = json['correct_answer'],
        incorrect_answers = (json['incorrect_answers'] as List<dynamic>)
            .map((e) => e as String)
            .toList();

  Map<String, dynamic> toJson() => {
        'category': category,
        'type': type,
        'difficulty': difficulty,
        'question': question,
        'correct_answer': correct_answer,
        'incorrect_answer': incorrect_answers
      };
}
