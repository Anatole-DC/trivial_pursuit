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

  Question.fromJson(Map<String, dynamic> json)
      : category = json['category'],
        type = json['type'],
        difficulty = json['difficulty'],
        question = json['question'],
        correct_answer = json['correct_answer'],
        incorrect_answers = json['incorrect_answers'];

  Map<String, dynamic> toJson() => {
        'category': category,
        'type': type,
        'difficulty': difficulty,
        'question': question,
        'correct_answer': correct_answer,
        'incorrect_answer': incorrect_answers
      };
}
