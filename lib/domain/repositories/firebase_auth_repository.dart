import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRepository {
  Future<UserCredential> signInAnonymously();
  User? getCurrentUser();
  Future<void> signOut();
}
