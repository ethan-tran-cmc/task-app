import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/firebase_auth_repository.dart';

@LazySingleton()
class GetCurrentUserUseCase implements OutputUseCase<User?> {
  final FirebaseAuthRepository _firebaseAuthRepository;
  GetCurrentUserUseCase(this._firebaseAuthRepository);

  @override
  User? run() {
    return _firebaseAuthRepository.getCurrentUser();
  }
}
