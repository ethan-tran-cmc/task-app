import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/presentation/task_create/task_create_state.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../../domain/usecase/firebase_auth/get_current_user_usecase.dart';
import '../../domain/usecase/firebase_auth/sign_in_anonymously_usercase.dart';

import '../../domain/usecase/task/create_task_usecase.dart';

@injectable
class TaskCreateCubit extends Cubit<TaskCreateState> {
  final CreateTaskUseCase _createTaskUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final SignInAnonymouslyUseCase _signInAnonymouslyUseCase;
  TaskCreateCubit(
    this._createTaskUseCase,
    this._getCurrentUserUseCase,
    this._signInAnonymouslyUseCase,
  ) : super(TaskCreateState.initial());

  final uuid = const Uuid();

  void init() {
    final user = _getCurrentUserUseCase.run();
    if (user == null) {
      _signInAnonymouslyUseCase.run();
    }
  }

  set updateImagePath(String imagePath) {
    emit(
      state.copyWith(
        imagePath: imagePath,
      ),
    );
  }

  Future<void> createTask(
    String title,
    String description,
    DateTime dateTime,
  ) async {
    final user = _getCurrentUserUseCase.run();
    String base64Image = "";
    if (user != null) {
      final userId = user.uid;
      if (state.imagePath.isNotEmpty) {
        File file = File(state.imagePath);
        Uint8List bytes = file.readAsBytesSync();
        base64Image = base64Encode(bytes);
      }
      emit(
        state.copyWith(
          status: TaskCreatePageStatus.createTaskInProgress,
        ),
      );
      try {
        await _createTaskUseCase.run(
          TaskEntities(
            id: uuid.v4(),
            title: title,
            description: description,
            createdAt: dateTime,
            image: base64Image,
            status: TaskStatus.inProgress,
            userId: userId,
          ),
        );
        emit(
          state.copyWith(status: TaskCreatePageStatus.createTaskSuccess),
        );
      } catch (e) {
        emit(
          state.copyWith(status: TaskCreatePageStatus.createTaskError),
        );
      }
    }
  }
}
