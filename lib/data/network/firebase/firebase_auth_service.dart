import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseAuthService {
  final firebaseAuth = FirebaseAuth.instance;

  User? getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  Future<UserCredential> signInAnonymously() {
    return firebaseAuth.signInAnonymously();
  }

  Future<void> signOut() {
    return firebaseAuth.signOut();
  }
}
