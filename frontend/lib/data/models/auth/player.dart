class Player {
  final String uid; // Firebase uid
  final String username; // Trivial Pursuit username
  final int score; // The score
  final DateTime? lastDailyQuizz; // The last daily quizz performed

  Player(this.username, this.uid, this.score, this.lastDailyQuizz);

  Player.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        score = json['score'],
        lastDailyQuizz = json['lastDailyQuizz'],
        uid = json['uid'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'score': score,
        'lastDailyQuizz': lastDailyQuizz,
      };
}
