import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_app/data/network/firebase/firebase_auth_service.dart';
import 'package:flutter_todo_app/data/repositories/firebase_auth_repository_implement.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'firebase_auth_repository_test.mocks.dart';

@GenerateMocks([FirebaseAuthService, User, UserCredential])
void main() {
  group(
    'Test the Task repository',
    () {
      final firebaseAuthService = MockFirebaseAuthService();
      final repository = FirebaseAuthRepositoryImplement(firebaseAuthService);
      final user = MockUser();
      final userCredential = MockUserCredential();

      test(
        'Get Current User',
        () {
          when(repository.getCurrentUser()).thenAnswer((_) => user);
          final result = repository.getCurrentUser();
          expect(result, isA<User?>());
        },
      );

      test(
        'SignIn Anonymously',
        () async {
          when(repository.signInAnonymously())
              .thenAnswer((_) => Future.value(userCredential));
          final result = await repository.signInAnonymously();
          expect(result, isA<UserCredential>());
        },
      );

      test(
        'Sign out',
        () {
          when(repository.signOut()).thenAnswer((_) => Future.value());
          expect(() async => await repository.signOut(), isA<void>());
        },
      );
    },
  );
}
