class Player {
  final String uid;
  String? username;
  int? score;
  String? lastDailyQuizz;

  Player(this.uid, this.username, this.score, this.lastDailyQuizz);

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
