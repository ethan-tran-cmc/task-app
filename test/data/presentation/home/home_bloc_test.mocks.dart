// Mocks generated by Mockito 5.4.0 from annotations
// in flutter_todo_app/test/data/presentation/home/home_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:firebase_auth/firebase_auth.dart' as _i2;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i10;
import 'package:flutter_todo_app/domain/entities/task_entities.dart' as _i7;
import 'package:flutter_todo_app/domain/usecase/firebase_auth/get_current_user_usecase.dart'
    as _i3;
import 'package:flutter_todo_app/domain/usecase/firebase_auth/sign_in_anonymously_usercase.dart'
    as _i4;
import 'package:flutter_todo_app/domain/usecase/task/delete_task_usecase.dart'
    as _i8;
import 'package:flutter_todo_app/domain/usecase/task/get_list_task_usecase.dart'
    as _i9;
import 'package:flutter_todo_app/domain/usecase/task/update_task_usecase.dart'
    as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUserCredential_0 extends _i1.SmartFake
    implements _i2.UserCredential {
  _FakeUserCredential_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserMetadata_1 extends _i1.SmartFake implements _i2.UserMetadata {
  _FakeUserMetadata_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMultiFactor_2 extends _i1.SmartFake implements _i2.MultiFactor {
  _FakeMultiFactor_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIdTokenResult_3 extends _i1.SmartFake implements _i2.IdTokenResult {
  _FakeIdTokenResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConfirmationResult_4 extends _i1.SmartFake
    implements _i2.ConfirmationResult {
  _FakeConfirmationResult_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUser_5 extends _i1.SmartFake implements _i2.User {
  _FakeUser_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetCurrentUserUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCurrentUserUseCase extends _i1.Mock
    implements _i3.GetCurrentUserUseCase {
  MockGetCurrentUserUseCase() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [SignInAnonymouslyUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignInAnonymouslyUseCase extends _i1.Mock
    implements _i4.SignInAnonymouslyUseCase {
  MockSignInAnonymouslyUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.UserCredential> run() => (super.noSuchMethod(
        Invocation.method(
          #run,
          [],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #run,
            [],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
}

/// A class which mocks [UpdateTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTaskUseCase extends _i1.Mock implements _i6.UpdateTaskUseCase {
  MockUpdateTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> run(_i7.TaskEntities? taskEntities) => (super.noSuchMethod(
        Invocation.method(
          #run,
          [taskEntities],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [DeleteTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteTaskUseCase extends _i1.Mock implements _i8.DeleteTaskUseCase {
  MockDeleteTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> run(_i7.TaskEntities? taskEntities) => (super.noSuchMethod(
        Invocation.method(
          #run,
          [taskEntities],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [GetListTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetListTaskUseCase extends _i1.Mock
    implements _i9.GetListTaskUseCase {
  MockGetListTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i7.TaskEntities>> run(String? userId) => (super.noSuchMethod(
        Invocation.method(
          #run,
          [userId],
        ),
        returnValue:
            _i5.Future<List<_i7.TaskEntities>>.value(<_i7.TaskEntities>[]),
      ) as _i5.Future<List<_i7.TaskEntities>>);
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i2.User {
  @override
  bool get emailVerified => (super.noSuchMethod(
        Invocation.getter(#emailVerified),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  bool get isAnonymous => (super.noSuchMethod(
        Invocation.getter(#isAnonymous),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i2.UserMetadata get metadata => (super.noSuchMethod(
        Invocation.getter(#metadata),
        returnValue: _FakeUserMetadata_1(
          this,
          Invocation.getter(#metadata),
        ),
        returnValueForMissingStub: _FakeUserMetadata_1(
          this,
          Invocation.getter(#metadata),
        ),
      ) as _i2.UserMetadata);
  @override
  List<_i2.UserInfo> get providerData => (super.noSuchMethod(
        Invocation.getter(#providerData),
        returnValue: <_i2.UserInfo>[],
        returnValueForMissingStub: <_i2.UserInfo>[],
      ) as List<_i2.UserInfo>);
  @override
  String get uid => (super.noSuchMethod(
        Invocation.getter(#uid),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.MultiFactor get multiFactor => (super.noSuchMethod(
        Invocation.getter(#multiFactor),
        returnValue: _FakeMultiFactor_2(
          this,
          Invocation.getter(#multiFactor),
        ),
        returnValueForMissingStub: _FakeMultiFactor_2(
          this,
          Invocation.getter(#multiFactor),
        ),
      ) as _i2.MultiFactor);
  @override
  _i5.Future<void> delete() => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdToken,
          [forceRefresh],
        ),
        returnValue: _i5.Future<String>.value(''),
        returnValueForMissingStub: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<_i2.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdTokenResult,
          [forceRefresh],
        ),
        returnValue: _i5.Future<_i2.IdTokenResult>.value(_FakeIdTokenResult_3(
          this,
          Invocation.method(
            #getIdTokenResult,
            [forceRefresh],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.IdTokenResult>.value(_FakeIdTokenResult_3(
          this,
          Invocation.method(
            #getIdTokenResult,
            [forceRefresh],
          ),
        )),
      ) as _i5.Future<_i2.IdTokenResult>);
  @override
  _i5.Future<_i2.UserCredential> linkWithCredential(
          _i2.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithCredential,
          [credential],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithCredential,
            [credential],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithCredential,
            [credential],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<_i2.UserCredential> linkWithProvider(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithProvider,
          [provider],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithProvider,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithProvider,
            [provider],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<_i2.UserCredential> reauthenticateWithProvider(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithProvider,
          [provider],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithProvider,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithProvider,
            [provider],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<_i2.UserCredential> reauthenticateWithPopup(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithPopup,
          [provider],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithPopup,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithPopup,
            [provider],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<void> reauthenticateWithRedirect(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithRedirect,
          [provider],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.UserCredential> linkWithPopup(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithPopup,
          [provider],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithPopup,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #linkWithPopup,
            [provider],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<void> linkWithRedirect(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithRedirect,
          [provider],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.ConfirmationResult> linkWithPhoneNumber(
    String? phoneNumber, [
    _i2.RecaptchaVerifier? verifier,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithPhoneNumber,
          [
            phoneNumber,
            verifier,
          ],
        ),
        returnValue:
            _i5.Future<_i2.ConfirmationResult>.value(_FakeConfirmationResult_4(
          this,
          Invocation.method(
            #linkWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.ConfirmationResult>.value(_FakeConfirmationResult_4(
          this,
          Invocation.method(
            #linkWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
      ) as _i5.Future<_i2.ConfirmationResult>);
  @override
  _i5.Future<_i2.UserCredential> reauthenticateWithCredential(
          _i2.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithCredential,
          [credential],
        ),
        returnValue: _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithCredential,
            [credential],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.UserCredential>.value(_FakeUserCredential_0(
          this,
          Invocation.method(
            #reauthenticateWithCredential,
            [credential],
          ),
        )),
      ) as _i5.Future<_i2.UserCredential>);
  @override
  _i5.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> sendEmailVerification(
          [_i2.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendEmailVerification,
          [actionCodeSettings],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.User> unlink(String? providerId) => (super.noSuchMethod(
        Invocation.method(
          #unlink,
          [providerId],
        ),
        returnValue: _i5.Future<_i2.User>.value(_FakeUser_5(
          this,
          Invocation.method(
            #unlink,
            [providerId],
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i2.User>.value(_FakeUser_5(
          this,
          Invocation.method(
            #unlink,
            [providerId],
          ),
        )),
      ) as _i5.Future<_i2.User>);
  @override
  _i5.Future<void> updateEmail(String? newEmail) => (super.noSuchMethod(
        Invocation.method(
          #updateEmail,
          [newEmail],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePassword(String? newPassword) => (super.noSuchMethod(
        Invocation.method(
          #updatePassword,
          [newPassword],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePhoneNumber(
          _i2.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
        Invocation.method(
          #updatePhoneNumber,
          [phoneCredential],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updateDisplayName(String? displayName) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDisplayName,
          [displayName],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updatePhotoURL(String? photoURL) => (super.noSuchMethod(
        Invocation.method(
          #updatePhotoURL,
          [photoURL],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updateProfile({
    String? displayName,
    String? photoURL,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProfile,
          [],
          {
            #displayName: displayName,
            #photoURL: photoURL,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> verifyBeforeUpdateEmail(
    String? newEmail, [
    _i2.ActionCodeSettings? actionCodeSettings,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyBeforeUpdateEmail,
          [
            newEmail,
            actionCodeSettings,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
