// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_todo_app/data/network/firebase/firebase_auth_service.dart'
    as _i3;
import 'package:flutter_todo_app/data/network/firebase/firestore_service.dart'
    as _i4;
import 'package:flutter_todo_app/data/repositories/firebase_auth_repository_implement.dart'
    as _i11;
import 'package:flutter_todo_app/data/repositories/task_repository_imp.dart'
    as _i6;
import 'package:flutter_todo_app/domain/repositories/firebase_auth_repository.dart'
    as _i10;
import 'package:flutter_todo_app/domain/repositories/task_repository.dart'
    as _i5;
import 'package:flutter_todo_app/domain/usecase/firebase_auth/get_current_user_usecase.dart'
    as _i12;
import 'package:flutter_todo_app/domain/usecase/firebase_auth/sign_in_anonymously_usercase.dart'
    as _i14;
import 'package:flutter_todo_app/domain/usecase/task/create_task_usecase.dart'
    as _i8;
import 'package:flutter_todo_app/domain/usecase/task/delete_task_usecase.dart'
    as _i9;
import 'package:flutter_todo_app/domain/usecase/task/get_list_task_usecase.dart'
    as _i13;
import 'package:flutter_todo_app/domain/usecase/task/update_task_usecase.dart'
    as _i7;
import 'package:flutter_todo_app/presentation/home/home_cubit.dart' as _i17;
import 'package:flutter_todo_app/presentation/task_create/task_create_cubit.dart'
    as _i15;
import 'package:flutter_todo_app/presentation/task_update/task_update_cubit.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.FirebaseAuthService>(() => _i3.FirebaseAuthService());
    gh.lazySingleton<_i4.FirestoreService>(() => _i4.FirestoreService());
    gh.lazySingleton<_i5.TaskRepository>(
        () => _i6.TaskRepositoryImplement(gh<_i4.FirestoreService>()));
    gh.lazySingleton<_i7.UpdateTaskUseCase>(
        () => _i7.UpdateTaskUseCase(gh<_i5.TaskRepository>()));
    gh.lazySingleton<_i8.CreateTaskUseCase>(
        () => _i8.CreateTaskUseCase(gh<_i5.TaskRepository>()));
    gh.lazySingleton<_i9.DeleteTaskUseCase>(
        () => _i9.DeleteTaskUseCase(gh<_i5.TaskRepository>()));
    gh.lazySingleton<_i10.FirebaseAuthRepository>(() =>
        _i11.FirebaseAuthRepositoryImplement(gh<_i3.FirebaseAuthService>()));
    gh.lazySingleton<_i12.GetCurrentUserUseCase>(
        () => _i12.GetCurrentUserUseCase(gh<_i10.FirebaseAuthRepository>()));
    gh.lazySingleton<_i13.GetListTaskUseCase>(
        () => _i13.GetListTaskUseCase(gh<_i5.TaskRepository>()));
    gh.lazySingleton<_i14.SignInAnonymouslyUseCase>(
        () => _i14.SignInAnonymouslyUseCase(gh<_i10.FirebaseAuthRepository>()));
    gh.factory<_i15.TaskCreateCubit>(() => _i15.TaskCreateCubit(
          gh<_i8.CreateTaskUseCase>(),
          gh<_i12.GetCurrentUserUseCase>(),
          gh<_i14.SignInAnonymouslyUseCase>(),
        ));
    gh.factory<_i16.TaskUpdateCubit>(
        () => _i16.TaskUpdateCubit(gh<_i7.UpdateTaskUseCase>()));
    gh.lazySingleton<_i17.HomeCubit>(() => _i17.HomeCubit(
          gh<_i13.GetListTaskUseCase>(),
          gh<_i12.GetCurrentUserUseCase>(),
          gh<_i14.SignInAnonymouslyUseCase>(),
          gh<_i7.UpdateTaskUseCase>(),
          gh<_i9.DeleteTaskUseCase>(),
        ));
    return this;
  }
}
