import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit/data/database/firebase_authentication_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class FirebasePlayerRepository {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static FirebasePlayerRepository? _instance;
  static late CollectionReference<Player> _playerRef;
  static Player? _currentPlayer;

  Player? get currentPlayer => _currentPlayer;

  FirebasePlayerRepository._();

  static FirebasePlayerRepository getInstance() {
    if (_instance == null) {
      _playerRef = _firebaseFirestore.collection('users').withConverter<Player>(
          fromFirestore: (snapshot, _) => Player.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instance = FirebasePlayerRepository._();
    }
    return _instance!;
  }

  Future<Player> getCurrentPlayer() async {
    if (_currentPlayer == null) {
      DocumentSnapshot<Player> result = await _playerRef
          .doc(FirebaseAuthenticationRepository().currentUser?.uid)
          .get();
      _currentPlayer = result.data();
    }

    return _currentPlayer!;
  }

  void signOut() {
    _currentPlayer = null;
  }

  bool isLoggedIn() {
    return _currentPlayer != null;
  }

  Future<void> createOrUpdatePlayer(Player player) async {
    return await _playerRef.doc(player.uid).set(player);
  }
}
