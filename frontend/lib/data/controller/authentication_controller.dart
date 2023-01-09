import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication_repository.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_player_repository.dart';
import 'package:trivial_pursuit/data/models/auth/player.dart';

class AuthenticationController {
  static final FirebaseAuthenticationRepository
      _firebaseAuthenticationRepository = FirebaseAuthenticationRepository();

  static final FirebasePlayerRepository _firebasePlayerRepository =
      FirebasePlayerRepository.getInstance();

  static AuthenticationController? _instance;
  AuthenticationController._();

  User? get currentUser => _firebaseAuthenticationRepository.currentUser;
  Player? get currentPlayer => _firebasePlayerRepository.currentPlayer;

  bool isLoggedIn() {
    return _firebasePlayerRepository.isLoggedIn();
  }

  Future<void> registerNewUser(
      String email, String username, String password) async {
    await _firebaseAuthenticationRepository.createUserWithEmailAndPassword(
        email: email, password: password);
    Player newPlayer = Player(
        _firebaseAuthenticationRepository.currentUser!.uid, username, 0, null);
    await _firebasePlayerRepository.createOrUpdatePlayer(newPlayer);
  }

  Future<void> login(String email, String password) async {
    await _firebaseAuthenticationRepository.signInWithEmailAndPassword(
        email: email, password: password);
    await _firebasePlayerRepository.getCurrentPlayer();
  }

  Future<void> logout() async {
    await _firebaseAuthenticationRepository.signOut();
    _firebasePlayerRepository.signOut();
  }

  static AuthenticationController getInstance() {
    _instance ??= AuthenticationController._();
    return _instance!;
  }
}
