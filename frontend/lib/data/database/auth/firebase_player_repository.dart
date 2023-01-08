import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class PlayerFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static PlayerFirebase? _instance;

  Player? currentPlayer;

  Player? getCurrentPlayer(String? uid) {
    if (currentPlayer == null && uid != null) {
      getPlayer(uid);
    }
    return currentPlayer;
  }

  static late CollectionReference<Player> _playerRef;

  PlayerFirebase._();

  static PlayerFirebase getInstance() {
    if (_instance == null) {
      _playerRef = _firebaseFirestore.collection('users').withConverter<Player>(
          fromFirestore: (snapshot, _) => Player.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instance = PlayerFirebase._();
    }
    return _instance!;
  }

  Future<void> createPlayer(Player player) async {
    await _playerRef.doc(player.uid).set(player);
    await getPlayer(player.uid ?? "null");
  }

  Future<Player> getPlayer(String uid) async {
    DocumentSnapshot<Player> response = await _playerRef.doc(uid).get();
    currentPlayer = response.data()!;
    return currentPlayer!;
  }

  Future<List<Player>> getAllPlayer() async {
    var response = await _playerRef.orderBy("score", descending: true).get();
    return response.docs.map((e) => e.data()).toList();
  }
}
