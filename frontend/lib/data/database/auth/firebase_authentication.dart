import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final PlayerFirebase _playerFirebase = PlayerFirebase.getInstance();

  User? get currentUser => _firebaseAuth.currentUser;
  Player? get currentPlayer =>
      _playerFirebase.getCurrentPlayer(currentUser?.uid);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserCredential response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    await _playerFirebase.getPlayer(response.user!.uid);
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String username,
    required String password,
  }) async {
    UserCredential response = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
    Player player = Player(username, response.user!.uid, 0, null);
    await _playerFirebase.createPlayer(player);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
