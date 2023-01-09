import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class LeaderboardFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static final LeaderboardFirebase _instance = LeaderboardFirebase._();
  static final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();

  List<Player> players = [];

  List<Player> getPlayers() {
    return players;
  }

  LeaderboardFirebase._();

  static LeaderboardFirebase getInstance() {
    return _instance;
  }

  // Future<List<Player>> getAllUsers() async {
  //   QuerySnapshot<Map<String, dynamic>> response =
  //       await _firebaseFirestore.collection("users").get();

  //   List<Player> playersList = [];

  //   response.docs.map((e) async {
  //     playersList.add(await _playerFirebase.getPlayer(e.id));
  //   });

  //   response.docs.forEach((element) { playersList.add(await _playerFirebase.getPlayer(element.id)); });

  //   return playersList;
  // }
}
