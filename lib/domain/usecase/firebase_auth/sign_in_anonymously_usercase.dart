import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/firebase_auth_repository.dart';

@LazySingleton()
class SignInAnonymouslyUseCase implements FutureOutputUseCase<UserCredential> {
  final FirebaseAuthRepository _firebaseAuthRepository;
  SignInAnonymouslyUseCase(this._firebaseAuthRepository);

  @override
  Future<UserCredential> run() {
    return _firebaseAuthRepository.signInAnonymously();
  }
}
