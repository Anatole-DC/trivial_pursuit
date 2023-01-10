class Player implements Comparable<Player> {
  final String? uid; // Firebase uid
  final String? username; // Trivial Pursuit username
  int score; // The score
  String? lastDailyQuizz; // The last daily quizz performed

  Player(this.username, this.uid, this.score, this.lastDailyQuizz);

  Player.fromJson(Map<String, dynamic> json)
      : username = json['pseudo'],
        score = json['score'],
        lastDailyQuizz = json['lastDailyQuizz'],
        uid = json['uid'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'pseudo': username,
        'score': score,
        'lastDailyQuizz': lastDailyQuizz,
      };

  void setScore(int score) {
    this.score = score;
  }

  @override
  int compareTo(Player other) {
    return other.score - score;
  }
}
