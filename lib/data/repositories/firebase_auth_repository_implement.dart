import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_app/data/network/firebase/firebase_auth_service.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/firebase_auth_repository.dart';

@LazySingleton(as: FirebaseAuthRepository)
class FirebaseAuthRepositoryImplement implements FirebaseAuthRepository {
  FirebaseAuthRepositoryImplement(this._firebaseAuthService);
  final FirebaseAuthService _firebaseAuthService;

  @override
  User? getCurrentUser() {
    return _firebaseAuthService.getCurrentUser();
  }

  @override
  Future<UserCredential> signInAnonymously() {
    return _firebaseAuthService.signInAnonymously();
  }

  @override
  Future<void> signOut() {
    return _firebaseAuthService.signOut();
  }
}
